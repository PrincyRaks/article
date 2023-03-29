package com.article.service;

import com.article.model.Article;
import com.article.repository.ArticleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ArticleService {
    @Autowired
    ArticleRepository articleRepository;

    public Article add(Article article){
        return articleRepository.save(article);
    }

    public List<Article> getAll(){
        return articleRepository.findAll();
    }

    public Article getById(long id){
        return articleRepository.findById(id).get();
    }
}
