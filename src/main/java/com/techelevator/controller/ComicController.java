package com.techelevator.controller;

import com.techelevator.model.Comic;
import com.techelevator.model.JdbcComicDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.time.LocalDate;
import java.util.function.BinaryOperator;

@Controller
@Transactional
public class ComicController {
    @Autowired
    JdbcComicDao jdbcComicDao;

    @RequestMapping(path = "/addComic", method = RequestMethod.GET)
    public String displayAddNewComicForm(ModelMap modelHolder) {
        modelHolder.put("comic", new Comic());

        return "/addComic";
    }

    @RequestMapping(value = "/addComic", method = RequestMethod.POST)
    public String processAddComicForm(@Valid @ModelAttribute("comic") Comic comic, BindingResult result, RedirectAttributes flash) {
        if (result.hasErrors()) {
            flash.addFlashAttribute("comic", comic);
            flash.addFlashAttribute(BindingResult.MODEL_KEY_PREFIX + "comic", result);
            flash.addFlashAttribute("message", "Please fix the following errors:");
            return "redirect:/addComic";
        }

            jdbcComicDao.addComic(comic.getComicName(), comic.getPublishDate(), comic.getImage(), comic.getGenre(),
                    comic.getDateObtained(), comic.getImprint(), comic.getSeries(), comic.getComicSerialNumber(), comic.getStoryArc(), comic.getDescription());

        return "redirect:/headquarters";
    }
}
