package com.techelevator.model;

import com.techelevator.authentication.AuthProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Component;
import org.springframework.web.bind.annotation.SessionAttributes;

import javax.sql.DataSource;
import java.util.ArrayList;
import java.util.List;

@Component
public class JdbcCollectionDao implements CollectionDao {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    private AuthProvider auth;

    @Autowired
    public JdbcCollectionDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Override
    public Collection getCollectionId(Long collectionId) {
        Collection collection = null;

        String sql = "select * from collection where collection_id=?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, collectionId);

        if (results.next()) {
            collection = mapRowToCollection(results);
        }
        return collection;
    }


    @Override
    public List<Collection> getAllCollectionsPerUser(Long id) {
        List<Collection> collections = new ArrayList<>();
        String sql = "select * from collection " +
                "join user_collections on collection.collection_id = user_collections.collection_id " +
                "where user_collections.id = ?";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql, id);
        while (result.next()) {
            Collection collection = mapRowToCollection(result);
            collections.add(collection);
        }
        return collections;
    }


    @Override
    public List<Collection> getAllPublicCollections() {
        List<Collection> collections = new ArrayList<>();
        String sql = "select * from collection where is_private is not true";
        SqlRowSet result = jdbcTemplate.queryForRowSet(sql);
        while (result.next()) {
            Collection collection = mapRowToCollection(result);
            collections.add(collection);
        }
        return collections;
    }

    @Override
    public String getUserNameByCollection(Long collectionId) {
        String userName = null;
        String sql = "select user_name from app_user " +
                "join user_collections on app_user.id = user_collections.id " +
                "where collection_id = ?;";
        userName = jdbcTemplate.queryForObject(sql, String.class, collectionId);
        return userName;
    }

    //Inserts into DB

    //To create customers MAIN collection
    @Override
    public Collection addDefaultCollection(String collectionName, Boolean isPrivate, Boolean isMain, String image) {
        Collection collection = new Collection();
//        String sql = "insert into collection (collection_name, is_private, is_main) values (?,?,?) returning collection_id" ;
        long newId = jdbcTemplate.queryForObject(
                "Insert into collection (collection_name, is_private, is_main, image) values (?,?,?,?) returning collection_id",
                Long.class, collectionName, isPrivate, isMain, image);
        collection.setCollectionId(newId);
        collection.setCollectionName(collectionName);
        collection.setIsPrivate(Boolean.TRUE);
        collection.setIs_main(Boolean.TRUE);
        collection.setImage(image);
        return collection;
    }

    //To add user&collection info to the join table to est. relationship
    @Override
    public void addDefaultCollectionToJoinTable(Long id, Long collectionId) {
        String sql = "insert into user_collections (id, collection_id) values (?,?)";
        jdbcTemplate.update(sql, id, collectionId);
    }

    @Override
    public Collection addCollection(String collectionName, Boolean isPrivate, String description, String image) {
        Collection collection = new Collection();
        String sql = "insert into collection (collection_name, is_private, description, image) values (?,?,?,?) returning collection_id";
        long collectionId = jdbcTemplate.queryForObject(sql, Long.class, collectionName, isPrivate, description, image);
        collection.setCollectionId(collectionId);
        collection.setCollectionName(collectionName);
        collection.setIsPrivate(isPrivate);
        collection.setDescription(description);
        collection.setImage(image);

        addDefaultCollectionToJoinTable(auth.getCurrentUser().getId(), collectionId);

        return collection;
    }


// Can use this query and change it to update any column based on comicId

    @Override
    public void updatedCollectionName(Collection collection) {
        String sql = "UPDATE collection SET collection_name=? WHERE collection_id=?";

        jdbcTemplate.update(sql, collection.getCollectionName(), collection.getCollectionId());
    }


    @Override
    public void updatedCollectionIsPrivate(Collection collection) {
        String sql = "UPDATE collection SET is_private=? WHERE collection_id=?";

        jdbcTemplate.update(sql, collection.getIsPrivate(), collection.getCollectionId());
    }

    @Override
    public void updatedCollectionImage(Collection collection) {
        String sql = "UPDATE collection SET image=? WHERE collection_id=?";

        jdbcTemplate.update(sql, collection.getImage(), collection.getCollectionId());
    }

    @Override
    public void updatedCollectionNumberOfComics(Collection collection) {
        String sql = "UPDATE collection SET number_of_comics=? WHERE collection_id=?";

        jdbcTemplate.update(sql, collection.getNumberOfComics(), collection.getCollectionId());
    }


// Delete comic Not sure if this is the actual query needed but at least will know if it doesnt work

    @Override
    public void removeCollectionFromUser(Long id, Long collectionId) {
        String sql = "DELETE FROM user_collections WHERE id=? AND collection_id=?";
        jdbcTemplate.update(sql, id, collectionId);
    }

    @Override
    public  List<Collection> searchCollections(String search) {
        List<Collection> matchingCollections = new ArrayList<>();
        String customerSearchSql = "SELECT * FROM collection WHERE collection_name ILIKE ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(customerSearchSql, "%" + search + "%");
        while (results.next()) {
            matchingCollections.add(mapRowToCollection(results));
        }
        return matchingCollections;
    }
    @Override
    public void updateCollectionData(String collectionName, Boolean isPrivate, String description, String image){
        String sql = "UPDATE collection SET collection_name = ?, is_private = ?, description = ?, image = ? WHERE collection_id=?";
        jdbcTemplate.update(sql, collectionName, isPrivate, description , image);
    }

    @Override
    public List<Collection> searchForCollectionsByComic(String search) {
        List<Collection> matchingCollections = new ArrayList<>();
        String customerSearchSql = "select * from collection " +
                "join comic_collections on collection.collection_id = comic_collections.collection_id " +
                "join comic on comic.comic_id = comic_collections.comic_id " +
                "where comic_name ilike ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(customerSearchSql, "%" + search + "%");
        while (results.next()) {
            matchingCollections.add(mapRowToCollection(results));
        }
        return matchingCollections;
    }


    private Collection mapRowToCollection(SqlRowSet results) {
        Collection collection = new Collection();
        collection.setCollectionId(results.getLong("collection_id"));
        collection.setCollectionName(results.getString("collection_name"));
        collection.setIsPrivate(results.getBoolean("is_private"));
        collection.setImage(results.getString("image"));
        collection.setNumberOfComics(results.getLong("number_of_comics"));
        collection.setDescription(results.getString("description"));
        return collection;
    }

}
