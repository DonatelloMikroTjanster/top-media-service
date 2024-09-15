package com.edufy.topmediaservice.entities;

import jakarta.persistence.*;

@Entity
@Table(name = "media")
public class Media {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title", length = 100)
    private String title;

    @Column(name = "media_category", length = 100)
    private String mediaCategory;

    public Media() {

    }








}
