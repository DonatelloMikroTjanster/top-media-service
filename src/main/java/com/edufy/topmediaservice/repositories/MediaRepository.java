package com.edufy.topmediaservice.repositories;

import com.edufy.topmediaservice.entities.Media;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface MediaRepository extends JpaRepository<Media, Long> {

}
