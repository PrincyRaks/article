package com.article.controller;

import com.article.model.Article;
import com.article.service.ArticleService;
import com.article.service.CategorieService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping("/")
public class ArticleController {
    @Autowired
    ArticleService articleService;
    @Autowired
    CategorieService categorieService;

    private static ModelAndView modelAndView = new ModelAndView();

    @RequestMapping
    public ModelAndView index(){
        modelAndView.addObject("articles", articleService.getAll());
        modelAndView.setViewName("index");
        return modelAndView;
    }

    @RequestMapping("/FormArticle")
    public ModelAndView toFormArticle(){
        modelAndView.addObject("categories",categorieService.getAll());
        modelAndView.setViewName("FormArticle");
        return modelAndView;
    }

    @PostMapping("/createArticle")
    public ModelAndView addArticle( @ModelAttribute Article article){
        String page="redirect:/FormArticle";
        if(!articleService.add(article).equals(null)){
            page="redirect:/";
        }
        modelAndView.setViewName(page);
        return modelAndView;
    }


    @GetMapping("/getById/{id}")
    public ModelAndView toFicheArticle(@PathVariable long id){
        modelAndView.addObject("article",articleService.getById(id));
        modelAndView.setViewName("Article");
        return modelAndView;
    }


}
