package com.techelevator.controller;

import com.techelevator.authentication.AuthProvider;
import com.techelevator.model.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
public class SearchController {
    @Autowired
    private AuthProvider auth;

    @Autowired
    private CollectionDao collectionDao;

    @Autowired
    private ComicDao comicDao;

    @Autowired
    private UserDao userDao;

    @RequestMapping("/search")
    public String searchCustomers(@RequestParam(required = false) String search,
                                  ModelMap map) {
        if (auth.userHasRole(new String[]{"Premium", "Standard"})) {
            List<Collection> collections = collectionDao.searchCollections(search);
            map.put("collections", collections);

            return "search";
        } else {
            return "topSecret";
        }
    }
}

