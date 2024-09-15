package com.edufy.topmediaservice.controllers;

import com.edufy.topmediaservice.entities.TopMedia;
import com.edufy.topmediaservice.services.TopMediaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/topmedia")
public class TopMediaController {

    private final TopMediaService topMediaService;

    @Autowired
    public TopMediaController(TopMediaService topMediaService) {
        this.topMediaService = topMediaService;
    }

    @GetMapping("/user/{userId}")
    public List<TopMedia> getTopMediaByUserId(@PathVariable Long userId) {
        return topMediaService.getTopMediaByUserId(userId);
    }
}