package com.article.model;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class Article implements Serializable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String titre;
    private String resume;
    private String contenu;
    private int idcategorie;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "idcategorie"  ,referencedColumnName = "id", insertable = false, updatable = false)
    private Categorie categorie;
}
