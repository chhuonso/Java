package com.sonny.lookify.service;

import java.util.List;
import java.util.Optional;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sonny.lookify.models.Lookify;
import com.sonny.lookify.repository.LookifyRepo;


@Service
public class LookifyService {
//			C R U D
	@Autowired
	private LookifyRepo lookifyRepo;
	
	
//	READ ALL
	public List<Lookify> allLookify(){
		return lookifyRepo.findAll();
	}
	
//	CREATE
	public Lookify createLookify(Lookify ly) {
		return lookifyRepo.save(ly);
	}
	
//	READL ONE
	public Lookify findLookify(Long id) {
		Optional <Lookify> maybeTravel = lookifyRepo.findById(id);
		if (maybeTravel.isPresent()) {
			return maybeTravel.get();
		} else {
			return null;
		}
	}
	
//	UPDATE
	public Lookify updateLookify(Lookify ly) {
		
		return lookifyRepo.save(ly);
	}
	
//	DELETE
	public void  deleteLookify(Long id) {
		lookifyRepo.deleteById(id);
	}
	
//	ORGANIZED TOP 10

}
