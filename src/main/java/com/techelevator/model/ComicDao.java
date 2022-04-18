package com.techelevator.model;

import java.time.LocalDate;
import java.util.List;

public interface ComicDao {
    Comic getComicId(Long comicId);

    List<Comic> getListOfComicsPerUser(Long id);

    List<Comic> getListOfComicsPerCollection(Long collectionId);

    public Long getComicByName(String comicName);

    Comic addComic(String comicName, LocalDate publishDate, String image, String genre, LocalDate dateObtained,
                         String imprint, String series, String comicSerialNumber, String storyArc, String description);

    public  List<Comic> searchComics(String search);

    void updatedComicName(Comic comic);

    void removeComicFromUser(Long id, Long comicId);

    int getCountOfAllComics();

    int getCountOfGenres(String genre, Long collectionId);

    int getCountOfSuperHero(String series, Long collectionId);

    int getCountOfComicsPerCollection(Long collectionId);

    int getCountOfImprint(String imprint, Long collectionId);

    int getCountOfImprintAgg(String imprint);

    int getCountOfSuperHeroAgg(String series);

    int getCountOfGenresAgg(String genre);

    int countOfComicsInUserMain(Long id);

    void addComicToComicCollectionTable(Long comicId, Long collectionId);

    Long getCollectionIdOfUserMain(Long id);
}
