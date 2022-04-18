package com.techelevator.model;

import com.sun.org.apache.bcel.internal.generic.RETURN;
import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.SessionAuthProvider;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.support.rowset.SqlRowSet;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Repository
public class JdbcComicDao implements ComicDao {

    private JdbcTemplate jdbcTemplate;

    @Autowired
    public JdbcComicDao(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    @Autowired
    private AuthProvider auth;

    @Override
    public Comic getComicId(Long comicId) {
        Comic comic = null;
        String sql = "select comic_id, comic_name from comic where comic_id=?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, comicId);
        if (results.next()) {
            comic = mapRowToComic(results);
        }
        return comic;
    }

    @Override
    public List<Comic> getListOfComicsPerUser(Long id) {
        List<Comic> comics = new ArrayList<>();
        String sql = "select * from comic " +
                "join comic_collections on comic.comic_id = comic_collections.comic_id " +
                "where collection_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, id);
        while (results.next()) {
            Comic comicResult = mapRowToComic(results);
            comics.add(comicResult);
        }
        return comics;
    }

    @Override
    public List<Comic> getListOfComicsPerCollection(Long collectionId) {
        List<Comic> comics = new ArrayList<>();
        String sql = "select * from comic " +
                "join comic_collections on comic.comic_id = comic_collections.comic_id " +
                "where collection_id = ?;";
        SqlRowSet results = jdbcTemplate.queryForRowSet(sql, collectionId);
        while (results.next()) {
            Comic comicResult = mapRowToComic(results);
            comics.add(comicResult);
        }
        return comics;
    }

    @Override
    public int getCountOfComicsPerCollection(Long collectionId) {
        String sql = "select count(*) from comic " +
                "join comic_collections on comic.comic_id = comic_collections.comic_id " +
                "where collection_id = ?;";

        return jdbcTemplate.queryForObject(sql, Integer.class, collectionId);
    }


    //Inserts into DB
    @Override
    public Comic addComic(String comicName, LocalDate publishDate, String image, String genre, LocalDate dateObtained,
                          String imprint, String series, String comicSerialNumber, String storyArc, String description) {
        String sql = "insert into comic (comic_name, publish_date, image, genre, date_obtained, imprint, " +
                "series,comic_serial_number, story_arc, description) values (?,?,?,?,?,?,?,?,?,?) returning comic_id";
        long newId = jdbcTemplate.queryForObject(sql, Long.class, comicName, publishDate, image, genre, dateObtained, imprint, series, comicSerialNumber, storyArc, description);

        Comic newComic = new Comic();
        newComic.setComicId(newId);
        newComic.setComicName(comicName);
        newComic.setPublishDate(publishDate);
        newComic.setImage(image);
        newComic.setGenre(genre);
        newComic.setDateObtained(dateObtained);
        newComic.setImprint(imprint);
        newComic.setSeries(series);
        newComic.setComicSerialNumber(comicSerialNumber);
        newComic.setStoryArc(storyArc);
        newComic.setDescription(description);

        //Unless you passing session info through JSP pages this is needed for Most methods

        Long collectionId = getCollectionIdOfUserMain(auth.getCurrentUser().getId());
        addComicToComicCollectionTable(newComic.getComicId(), collectionId);

        return newComic;
    }

    @Override
    public Long getCollectionIdOfUserMain(Long id) {
        Long collectionId = null;
        String sql = "select collection.collection_id from collection " +
                "join user_collections on collection.collection_id = user_collections.collection_id " +
                "where user_collections.id = ? and is_main = true";
        collectionId = jdbcTemplate.queryForObject(sql, Long.class, id);
        return collectionId;
    }

    @Override
    public void addComicToComicCollectionTable(Long comicId, Long collectionId) {
        String sql = "insert into comic_collections (comic_id, collection_id) " +
                "values (?,?)";
        jdbcTemplate.update(sql, comicId, collectionId);
    }


// Can use this query and change it to update any column based on comicId

    @Override
    public void updatedComicName(Comic comic) {
        String sql = "UPDATE comic SET comic_name=? WHERE comic_id=?";

        jdbcTemplate.update(sql, comic.getComicName(), comic.getComicId());
    }


    @Override
    public void removeComicFromUser(Long id, Long comicId) {
        String sql = "DELETE FROM comic_collections WHERE comic_id=? and collection_id= ?";
        jdbcTemplate.update(sql, id, comicId);
    }


    //Aggregate query Methods

    @Override
    public int getCountOfAllComics() {
        String sql = "select count(*) from comic;";

        return jdbcTemplate.queryForObject(sql, Integer.class);
    }

    @Override
    public int getCountOfGenres(String genre, Long collectionId) {
        String sql = "select count(*) from comic join comic_collections on comic.comic_id = comic_collections.comic_id where genre ilike ? and collection_id = ?;";

        return jdbcTemplate.queryForObject(sql, Integer.class, genre, collectionId);
    }

    @Override
    public int getCountOfSuperHero(String series, Long collectionId) {
        String sql = "select count(*) from comic join comic_collections on comic.comic_id = comic_collections.comic_id\n" +
                "where series = ? and collection_id = ?;";

        return jdbcTemplate.queryForObject(sql, Integer.class, series, collectionId);
    }

    @Override
    public int getCountOfImprint(String imprint, Long collectionId) {
        String sql = "select count(*) from comic join comic_collections on comic.comic_id = comic_collections.comic_id where imprint =? and collection_id = ?;";

        return jdbcTemplate.queryForObject(sql, Integer.class, imprint, collectionId);
    }

    // for Site agg counts
    @Override
    public int getCountOfImprintAgg(String imprint) {
        String sql = "select count(*) from comic where imprint =?;";

        return jdbcTemplate.queryForObject(sql, Integer.class, imprint);
    }

    @Override
    public int getCountOfGenresAgg(String genre) {
        String sql = "select count(*) from comic where genre ilike ?;";

        return jdbcTemplate.queryForObject(sql, Integer.class, genre);
    }

    @Override
    public int getCountOfSuperHeroAgg(String series) {
        String sql = "select count(*) from comic where series = ?;";

        return jdbcTemplate.queryForObject(sql, Integer.class, series);
    }

    @Override
    public int countOfComicsInUserMain(Long id) {
        String sql = "select count(*) " +
                "from comic " +
                "         join comic_collections on comic.comic_id = comic_collections.comic_id " +
                "         join collection on collection.collection_id = comic_collections.collection_id " +
                "         JOIN user_collections on collection.collection_id = user_collections.collection_id " +
                "         join app_user au on user_collections.id = au.id " +
                "where is_main = true " +
                "  and au.id = ?;";

        return jdbcTemplate.queryForObject(sql, Integer.class, id);
    }

    @Override
    public  List<Comic> searchComics(String search) {
        List<Comic> matchingComics = new ArrayList<>();
        String customerSearchSql = "SELECT * FROM comic WHERE comic_name ILIKE ?";
        SqlRowSet results = jdbcTemplate.queryForRowSet(customerSearchSql, "%" + search + "%");
        while (results.next()) {
            matchingComics.add(mapRowToComic(results));
        }
        return matchingComics;
    }

    @Override
    public Long getComicByName(String comicName){
        String sql = "SELECT comic_id from comic where comic_name = ?";
        Long comicId = (Long) jdbcTemplate.queryForObject(sql, Long.class, comicName);

        return comicId;
    }


    private Comic mapRowToComic(SqlRowSet results) {
        Comic comic = new Comic();
        comic.setComicId(results.getLong("comic_id"));
        comic.setComicName(results.getString("comic_name"));
        comic.setPublishDate(results.getDate("publish_date").toLocalDate());
        comic.setImage(results.getString("image"));
        comic.setGenre(results.getString("genre"));
        comic.setDateObtained(results.getDate("date_obtained").toLocalDate());
        comic.setComicSerialNumber(results.getString("comic_serial_number"));
        comic.setStoryArc(results.getString("story_arc"));
        comic.setDescription(results.getString("description"));
        comic.setImprint(results.getString("imprint"));
        comic.setSeries(results.getString("series"));
        return comic;
    }
}
