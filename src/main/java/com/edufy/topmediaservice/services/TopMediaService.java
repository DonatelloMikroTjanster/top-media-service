package com.edufy.topmediaservice.services;

import com.edufy.topmediaservice.entities.TopMedia;
import com.edufy.topmediaservice.repositories.TopMediaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TopMediaService {


    private final TopMediaRepository topMediaRepository;

    @Autowired
    public TopMediaService(TopMediaRepository topMediaRepository) {
        this.topMediaRepository = topMediaRepository;
    }

    public List<TopMedia> getTopMediaByUserId(Long userId) {
        return topMediaRepository.findByUserId(userId);
    }


    public TopMedia addTopMedia(TopMedia topMedia) {

        return topMediaRepository.save(topMedia);
    }
}
