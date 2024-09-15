package com.edufy.topmediaservice.services;

import com.edufy.topmediaservice.entities.Media;
import com.edufy.topmediaservice.repositories.MediaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MediaService {

    private final MediaRepository mediaRepository;

    @Autowired
    public MediaService(MediaRepository mediaRepository) {
        this.mediaRepository = mediaRepository;
    }

    public List<Media> getAllMedia() {
        return mediaRepository.findAll();
    }


}
