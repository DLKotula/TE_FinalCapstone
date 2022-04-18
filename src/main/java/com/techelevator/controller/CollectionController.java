package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CollectionController {

    @Autowired
    private CollectionDao collectionDao;

    @Autowired
    private AuthProvider auth;

    @Autowired
    private JdbcComicDao jdbcComicDao;

    @RequestMapping("/collection/detail")
    public String showProductDetail(HttpServletRequest request) {
        long collectionId = Long.parseLong(request.getParameter("id"));
        Collection collection = collectionDao.getCollectionId(collectionId);
        request.setAttribute("collection", collection);

        /* collection total comics count*/

        int count = jdbcComicDao.getCountOfComicsPerCollection(collectionId);
        request.setAttribute("count", count);

        /* collection comics counts by imprint*/
        int dcCount = jdbcComicDao.getCountOfImprint("DC Comics/Detective Comics", collectionId);
        request.setAttribute("dcCount", dcCount);
        int marvelCount = jdbcComicDao.getCountOfImprint("Marvel Comics/Atlas Comics", collectionId);
        request.setAttribute("marvelCount", marvelCount);
        int imageCount = jdbcComicDao.getCountOfImprint("Image", collectionId);
        request.setAttribute("imageCount", imageCount);
        int vertigoCount = jdbcComicDao.getCountOfImprint("Vertigo/DC Black Label", collectionId);
        request.setAttribute("vertigoCount", vertigoCount);
        int darkHorseCount = jdbcComicDao.getCountOfImprint("Dark Horse", collectionId);
        request.setAttribute("darkHorseCount", darkHorseCount);
        int idwCount = jdbcComicDao.getCountOfImprint("IDW", collectionId);
        request.setAttribute("idwCount", idwCount);
        int valiantCount = jdbcComicDao.getCountOfImprint("Valiant", collectionId);
        request.setAttribute("valiantCount", valiantCount);
        int boomCount = jdbcComicDao.getCountOfImprint("Boom! Studios", collectionId);
        request.setAttribute("boomCount", boomCount);
        int dynamiteCount = jdbcComicDao.getCountOfImprint("Dynamite Entertainment", collectionId);
        request.setAttribute("dynamiteCount", dynamiteCount);
        int archieCount = jdbcComicDao.getCountOfImprint("Archie Comics", collectionId);
        request.setAttribute("archieCount", archieCount);
        int otherCount = jdbcComicDao.getCountOfImprint("other", collectionId);
        request.setAttribute("otherCount", otherCount);

        /* collection comics counts by character*/
        /* DC heroes */
        int supermanCount = jdbcComicDao.getCountOfSuperHero("Superman", collectionId);
        request.setAttribute("supermanCount", supermanCount);
        int batmanCount = jdbcComicDao.getCountOfSuperHero("Batman", collectionId);
        request.setAttribute("batmanCount", batmanCount);
        int nightwingCount = jdbcComicDao.getCountOfSuperHero("NightWing", collectionId);
        request.setAttribute("nightwingCount", nightwingCount);
        int flashCount = jdbcComicDao.getCountOfSuperHero("Flash", collectionId);
        request.setAttribute("flashCount", flashCount);
        int wonderWomanCount = jdbcComicDao.getCountOfSuperHero("Wonder Woman", collectionId);
        request.setAttribute("wonderWomanCount", wonderWomanCount);
        int jlaCount = jdbcComicDao.getCountOfSuperHero("Justice League", collectionId);
        request.setAttribute("jlaCount", jlaCount);
        int watchmenCount = jdbcComicDao.getCountOfSuperHero("Watchmen", collectionId);
        request.setAttribute("watchmenCount", watchmenCount);
        int tmntCount = jdbcComicDao.getCountOfSuperHero("TMNT", collectionId);
        request.setAttribute("tmntCount", tmntCount);
        int sandmanCount = jdbcComicDao.getCountOfSuperHero("Sandman", collectionId);
        request.setAttribute("sandmanCount", sandmanCount);
        int greenArrowCount = jdbcComicDao.getCountOfSuperHero("Green Arrow", collectionId);
        request.setAttribute("greenArrowCount", greenArrowCount);

        /* Marvel heroes */
        int avengersCount = jdbcComicDao.getCountOfSuperHero("Avengers", collectionId);
        request.setAttribute("avengersCount", avengersCount);
        int xmenCount = jdbcComicDao.getCountOfSuperHero("X-Men", collectionId);
        request.setAttribute("xmenCount", xmenCount);
        int spidermanCount = jdbcComicDao.getCountOfSuperHero("Spider-Man", collectionId);
        request.setAttribute("spidermanCount", spidermanCount);
        int wolverineCount = jdbcComicDao.getCountOfSuperHero("Wolverine", collectionId);
        request.setAttribute("wolverineCount", wolverineCount);
        int deadpoolCount = jdbcComicDao.getCountOfSuperHero("Deadpool", collectionId);
        request.setAttribute("deadpoolCount", deadpoolCount);
        int fantasticFourCount = jdbcComicDao.getCountOfSuperHero("Fantastic Four", collectionId);
        request.setAttribute("fantasticFourCount", fantasticFourCount);
        int starWarsCount = jdbcComicDao.getCountOfSuperHero("Star Wars", collectionId);
        request.setAttribute("starWarsCount", starWarsCount);
        int vaderCount = jdbcComicDao.getCountOfSuperHero("Darth Vader", collectionId);
        request.setAttribute("vaderCount", vaderCount);
        int hawkeyeCount = jdbcComicDao.getCountOfSuperHero("Hawkeye", collectionId);
        request.setAttribute("hawkeyeCount", hawkeyeCount);
        int thorCount = jdbcComicDao.getCountOfSuperHero("Thor", collectionId);
        request.setAttribute("thorCount", thorCount);

        /* other heroes/characters */
        int archieAndrewsCount = jdbcComicDao.getCountOfSuperHero("Archie", collectionId);
        request.setAttribute("archieAndrewsCount", archieAndrewsCount);
        int sagaCount = jdbcComicDao.getCountOfSuperHero("Saga", collectionId);
        request.setAttribute("sagaCount", sagaCount);
        int umbrellaAcademyCount = jdbcComicDao.getCountOfSuperHero("Umbrella Academy", collectionId);
        request.setAttribute("umbrellaAcademyCount", umbrellaAcademyCount);
        int starTrekCount = jdbcComicDao.getCountOfSuperHero("Star Trek", collectionId);
        request.setAttribute("starTrekCount", starTrekCount);


        /* collection comics counts by genre*/
        int crimeCount = jdbcComicDao.getCountOfGenres("crime", collectionId);
        request.setAttribute("crimeCount", crimeCount);
        int fantasyCount = jdbcComicDao.getCountOfGenres("fantasy", collectionId);
        request.setAttribute("fantasyCount", fantasyCount);
        int romanceCount = jdbcComicDao.getCountOfGenres("romance", collectionId);
        request.setAttribute("romanceCount", romanceCount);
        int scifiCount = jdbcComicDao.getCountOfGenres("science fiction", collectionId);
        request.setAttribute("scifiCount", scifiCount);
        int horrorCount = jdbcComicDao.getCountOfGenres("horror", collectionId);
        request.setAttribute("horrorCount", horrorCount);
        int actionCount = jdbcComicDao.getCountOfGenres("action", collectionId);
        request.setAttribute("actionCount", actionCount);
        int otherGenreCount = jdbcComicDao.getCountOfComicsPerCollection(collectionId) -
                crimeCount - fantasyCount - romanceCount - scifiCount - horrorCount
                - actionCount;
        request.setAttribute("otherGenreCount", otherGenreCount);


        List<Comic> comics = jdbcComicDao.getListOfComicsPerCollection(collectionId);
        request.setAttribute("comics", comics);

        String username = collectionDao.getUserNameByCollection(collectionId);
        request.setAttribute("username", username);

        return "collectionDetail";
    }

    @RequestMapping(path = "/collection", method = RequestMethod.GET)
    public String displayCreateCollectionForm(ModelMap modelHolder) {
        modelHolder.put("collection", new Collection());

        return "/collection";
    }

    @RequestMapping(value = "/collection", method = RequestMethod.POST)
    public String processCreateCollectionForm(@Valid @ModelAttribute("collection") Collection collection, BindingResult result, RedirectAttributes flash){
        if (result.hasErrors()){
            flash.addFlashAttribute("collection", collection);
            flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "collection", result);
//            flash.addFlashAttribute("message", "Please update the bellow content:");
            return "redirect:/collection";
        }

        collectionDao.addCollection(collection.getCollectionName(),collection.getIsPrivate(),collection.getDescription(),collection.getImage());

        return "redirect:/headquarters";
    }
}
