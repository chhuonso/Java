package com.sonny.wk2dy3.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sonny.wk2dy3.models.SaveTravel;
import com.sonny.wk2dy3.repos.SaveTravelRepo;

@Service
public class SaveTravelService {
	
//	 C R U D
	
	@Autowired
	private SaveTravelRepo travelRepo;
	
	
//	READ ALL
	public List<SaveTravel> allSaveTravels(){
		return travelRepo.findAll();
	}
	
//	CREATE
	public SaveTravel createTravel(SaveTravel st) {
		return travelRepo.save(st);
	}
	
//	READL ONE
	public SaveTravel findTravel(Long id) {
		Optional <SaveTravel> maybeTravel = travelRepo.findById(id);
		if (maybeTravel.isPresent()) {
			return maybeTravel.get();
		} else {
			return null;
		}
	}
	
//	UPDATE
	public SaveTravel updateTravel(SaveTravel st) {
//		st.get
		return travelRepo.save(st);
	}
	
//	DELETE
	public void  deleteTravel(Long id) {
		travelRepo.deleteById(id);
	}
}
