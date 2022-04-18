package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;


@Controller
@SessionAttributes({"comics", "collection"})
public class CollectionUpdateController {

    @Autowired
    private JdbcCollectionDao jdbcCollectionDao;

    @Autowired
    private AuthProvider auth;

    @Autowired
    private JdbcComicDao jdbcComicDao;


    @RequestMapping(path = "/userCollectionDetail", method = RequestMethod.GET)
    public String showUserCollectionDetails(@RequestParam Long id, ModelMap mapHolder, HttpSession session) {
        session.setAttribute("collection", jdbcCollectionDao.getCollectionId(id));
        session.setAttribute("comics", jdbcComicDao.getListOfComicsPerCollection(id));
        int count = jdbcComicDao.getCountOfComicsPerCollection(id);
        mapHolder.put("comics", session.getAttribute("comics"));
        mapHolder.put("collection", session.getAttribute("collection"));
        mapHolder.put("count", count);
        return "userCollectionDetail";
    }

    @RequestMapping(path = "/collectionBulkAdd", method = RequestMethod.GET)
    public String showBulkAdd(@RequestParam Long collectionId, ModelMap map, HttpSession session) {
        session.setAttribute("comics", jdbcComicDao.getListOfComicsPerCollection(jdbcComicDao.getCollectionIdOfUserMain(auth.getCurrentUser().getId())));
        map.put("comics", session.getAttribute("comics"));
        session.setAttribute("collection", jdbcCollectionDao.getCollectionId(collectionId));
        map.put("collection", session.getAttribute("collection"));
        return "collectionBulkAdd";
    }

    @RequestMapping(path = "/collectionBulkAdd", method = RequestMethod.POST)
    public String addBulkAdd(@RequestParam Long comicId, @RequestParam Long collectionId, RedirectAttributes redirect) {
        redirect.addFlashAttribute("comicId", comicId);
        redirect.addFlashAttribute("collectionId", collectionId);
        jdbcComicDao.addComicToComicCollectionTable(comicId, collectionId);
        return "redirect:/headquarters";
    }

//    @RequestMapping(path = "/editCollection", method = RequestMethod.GET)
//    public String editCollectionInformation(@ModelAttribute("collection") Collection collection,
//                                            ModelMap map, HttpSession session) {
//        session.setAttribute("collection", jdbcCollectionDao.getCollectionId((Long) (session.getAttribute(session.getId()))));
//        map.put("collection", session.getAttribute("collection"));
//        return "editCollection";
//    }
//
//    @RequestMapping(path = "/editCollection", method = RequestMethod.POST)
//    public String editCollectionInformation(@ModelAttribute("collection") Collection collection,
//                                            BindingResult result, RedirectAttributes flash) {
//        if (result.hasErrors()) {
//            flash.addFlashAttribute("collection", collection);
//            flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "collection", result);
//            flash.addFlashAttribute("message", "Please update the bellow content:");
//
//            return "redirect:/editCollection";
//        }
//        jdbcCollectionDao.updateCollectionData(collection.getCollectionName(),
//                collection.getIsPrivate(),collection.getDescription(),collection.getImage());
//        return "redirect:/headquarters";
//    }

    @RequestMapping("/successfullyAddedComic")
    public String successfullyAddedComic() {
        return "duplicateAdd";
    }


}
