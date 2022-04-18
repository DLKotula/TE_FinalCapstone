package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.authentication.UnauthorizedException;

import com.techelevator.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

/**
 * SiteController
 */
@Controller
public class SiteController {
    @Autowired
    private AuthProvider auth;

    @Autowired
    private JdbcComicDao jdbcComicDao;

    @Autowired
    private JdbcCollectionDao jdbcCollectionDao;


    @RequestMapping(path = "/headquarters", method = RequestMethod.GET)
    public String privatePage(ModelMap model, HttpServletRequest request) {

        if (auth.userHasRole(new String[]{"Premium", "Standard"})) {
            List<Comic> comics = new ArrayList<>();
            comics = jdbcComicDao.getListOfComicsPerCollection(jdbcComicDao.getCollectionIdOfUserMain(auth.getCurrentUser().getId()));
            request.setAttribute("comics", comics);
            List<Collection> collections = new ArrayList<>();
            collections = jdbcCollectionDao.getAllCollectionsPerUser(auth.getCurrentUser().getId());
            request.setAttribute("collections", collections);
            int count = jdbcComicDao.getCountOfComicsPerCollection(jdbcComicDao.getCollectionIdOfUserMain(auth.getCurrentUser().getId()));
            request.setAttribute("count", count);
            return "private";
        } else {
            return "topSecret";
        }
    }

    @RequestMapping(path = "/about", method = RequestMethod.GET)
    public String aboutPage(HttpServletRequest request) throws UnauthorizedException {
        //This returns count of all comics in the DB
        int count = jdbcComicDao.getCountOfAllComics();
        request.setAttribute("count", count);

        //comics counts by imprint*/
        int dcCount = jdbcComicDao.getCountOfImprintAgg("DC Comics/Detective Comics");
        request.setAttribute("dcCount", dcCount);
        int marvelCount = jdbcComicDao.getCountOfImprintAgg("Marvel Comics/Atlas Comics");
        request.setAttribute("marvelCount", marvelCount);
        int imageCount = jdbcComicDao.getCountOfImprintAgg("Image");
        request.setAttribute("imageCount", imageCount);
        int vertigoCount = jdbcComicDao.getCountOfImprintAgg("Vertigo/DC Black Label");
        request.setAttribute("vertigoCount", vertigoCount);
        int darkHorseCount = jdbcComicDao.getCountOfImprintAgg("Dark Horse");
        request.setAttribute("darkHorseCount", darkHorseCount);
        int idwCount = jdbcComicDao.getCountOfImprintAgg("IDW");
        request.setAttribute("idwCount", idwCount);
        int valiantCount = jdbcComicDao.getCountOfImprintAgg("Valiant");
        request.setAttribute("valiantCount", valiantCount);
        int boomCount = jdbcComicDao.getCountOfImprintAgg("Boom! Studios");
        request.setAttribute("boomCount", boomCount);
        int dynamiteCount = jdbcComicDao.getCountOfImprintAgg("Dynamite Entertainment");
        request.setAttribute("dynamiteCount", dynamiteCount);
        int archieCount = jdbcComicDao.getCountOfImprintAgg("Archie Comics");
        request.setAttribute("archieCount", archieCount);
        int otherCount = jdbcComicDao.getCountOfImprintAgg("other");
        request.setAttribute("otherCount", otherCount);


        /* collection comics counts by character*/
        /* DC heroes */
        int supermanCount = jdbcComicDao.getCountOfSuperHeroAgg("Superman");
        request.setAttribute("supermanCount", supermanCount);
        int batmanCount = jdbcComicDao.getCountOfSuperHeroAgg("Batman");
        request.setAttribute("batmanCount", batmanCount);
        int nightwingCount = jdbcComicDao.getCountOfSuperHeroAgg("NightWing");
        request.setAttribute("nightwingCount", nightwingCount);
        int flashCount = jdbcComicDao.getCountOfSuperHeroAgg("Flash");
        request.setAttribute("flashCount", flashCount);
        int wonderWomanCount = jdbcComicDao.getCountOfSuperHeroAgg("Wonder Woman");
        request.setAttribute("wonderWomanCount", wonderWomanCount);
        int jlaCount = jdbcComicDao.getCountOfSuperHeroAgg("Justice League");
        request.setAttribute("jlaCount", jlaCount);
        int watchmenCount = jdbcComicDao.getCountOfSuperHeroAgg("Watchmen");
        request.setAttribute("watchmenCount", watchmenCount);
        int tmntCount = jdbcComicDao.getCountOfSuperHeroAgg("TMNT");
        request.setAttribute("tmntCount", tmntCount);
        int sandmanCount = jdbcComicDao.getCountOfSuperHeroAgg("Sandman");
        request.setAttribute("sandmanCount", sandmanCount);

        /* Marvel heroes */
        int avengersCount = jdbcComicDao.getCountOfSuperHeroAgg("Avengers");
        request.setAttribute("avengersCount", avengersCount);
        int xmenCount = jdbcComicDao.getCountOfSuperHeroAgg("X-Men");
        request.setAttribute("xmenCount", xmenCount);
        int spidermanCount = jdbcComicDao.getCountOfSuperHeroAgg("Spider-Man");
        request.setAttribute("spidermanCount", spidermanCount);
        int wolverineCount = jdbcComicDao.getCountOfSuperHeroAgg("Wolverine");
        request.setAttribute("wolverineCount", wolverineCount);
        int deadpoolCount = jdbcComicDao.getCountOfSuperHeroAgg("Deadpool");
        request.setAttribute("deadpoolCount", deadpoolCount);
        int fantasticFourCount = jdbcComicDao.getCountOfSuperHeroAgg("Fantastic Four");
        request.setAttribute("fantasticFourCount", fantasticFourCount);
        int starWarsCount = jdbcComicDao.getCountOfSuperHeroAgg("Star Wars");
        request.setAttribute("starWarsCount", starWarsCount);
        int vaderCount = jdbcComicDao.getCountOfSuperHeroAgg("Darth Vader");
        request.setAttribute("vaderCount", vaderCount);

        /* other heroes/characters */
        int archieAndrewsCount = jdbcComicDao.getCountOfSuperHeroAgg("Archie");
        request.setAttribute("archieAndrewsCount", archieAndrewsCount);
        int sagaCount = jdbcComicDao.getCountOfSuperHeroAgg("Saga");
        request.setAttribute("sagaCount", sagaCount);
        int umbrellaAcademyCount = jdbcComicDao.getCountOfSuperHeroAgg("Umbrella Academy");
        request.setAttribute("umbrellaAcademyCount", umbrellaAcademyCount);
        int starTrekCount = jdbcComicDao.getCountOfSuperHeroAgg("Star Trek");
        request.setAttribute("starTrekCount", starTrekCount);

        /* collection comics counts by genre*/
        int crimeCount = jdbcComicDao.getCountOfGenresAgg("crime");
        request.setAttribute("crimeCount", crimeCount);
        int fantasyCount = jdbcComicDao.getCountOfGenresAgg("fantasy");
        request.setAttribute("fantasyCount", fantasyCount);
        int romanceCount = jdbcComicDao.getCountOfGenresAgg("romance");
        request.setAttribute("romanceCount", romanceCount);
        int scifiCount = jdbcComicDao.getCountOfGenresAgg("science fiction");
        request.setAttribute("scifiCount", scifiCount);
        int horrorCount = jdbcComicDao.getCountOfGenresAgg("horror");
        request.setAttribute("horrorCount", horrorCount);
        int actionCount = jdbcComicDao.getCountOfGenresAgg("action");
        request.setAttribute("actionCount", actionCount);
        int otherGenreCount = jdbcComicDao.getCountOfAllComics() -
                crimeCount - fantasyCount - romanceCount - scifiCount - horrorCount
                - actionCount;
        request.setAttribute("otherGenreCount", otherGenreCount);


        return "about";
    }
}
