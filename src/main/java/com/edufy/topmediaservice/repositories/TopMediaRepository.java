package com.edufy.topmediaservice.repositories;

import com.edufy.topmediaservice.entities.TopMedia;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TopMediaRepository extends JpaRepository<TopMedia, Long> {

    List<TopMedia> findByUserId(Long userId);

}
