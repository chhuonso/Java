package com.sonny.wk2dy3.repos;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sonny.wk2dy3.models.SaveTravel;


@Repository
public interface SaveTravelRepo extends CrudRepository<SaveTravel, Long> {
	List<SaveTravel> findAll();
}
