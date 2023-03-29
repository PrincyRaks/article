package com.article.service;

import com.article.model.Categorie;
import com.article.repository.CategorieRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.persistence.Entity;
import java.util.List;

@Service
public class CategorieService {
    @Autowired
    CategorieRepository categorieRepository;

    Entity entity;
    public List<Categorie> getAll(){
        return categorieRepository.findAll();
    }
}
