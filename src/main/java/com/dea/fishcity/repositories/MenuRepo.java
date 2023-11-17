package com.dea.fishcity.repositories;

import com.dea.fishcity.models.Menu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MenuRepo extends JpaRepository<Menu, Long> {
    Menu findByImageData(String imageData);

    List<Menu> findByType(String type);

    List<Menu> findByUsers_Id(Long userId);

}
