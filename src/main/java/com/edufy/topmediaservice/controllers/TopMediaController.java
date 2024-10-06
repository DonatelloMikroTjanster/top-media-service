package com.edufy.topmediaservice.controllers;

import com.edufy.topmediaservice.entities.TopMedia;
import com.edufy.topmediaservice.services.TopMediaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

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

    @PostMapping("/add")
    public TopMedia addTopMedia(@RequestBody TopMedia topMedia) {
        return topMediaService.addTopMedia(topMedia);
    }

}