package com.techelevator.model;


import java.util.List;

public interface CollectionDao {

    Collection getCollectionId(Long collectionId);

    List<Collection> getAllPublicCollections();

    public List<Collection> getAllCollectionsPerUser(Long id);

    Collection addDefaultCollection(String collectionName, Boolean isPrivate, Boolean isMain, String image);

    void addDefaultCollectionToJoinTable(Long id, Long collectionId);

    Collection addCollection(String collectionName, Boolean isPrivate, String description, String image);

    public String getUserNameByCollection(Long collectionId);

    public  List<Collection> searchCollections(String search);


    void updatedCollectionName(Collection collection);

    void updatedCollectionIsPrivate(Collection collection);

    void updatedCollectionImage(Collection collection);

    void updatedCollectionNumberOfComics(Collection collection);

    void removeCollectionFromUser(Long id, Long collectionId);

    List<Collection> searchForCollectionsByComic(String search);

    void updateCollectionData(String collectionName, Boolean isPrivate, String description, String image);

}
