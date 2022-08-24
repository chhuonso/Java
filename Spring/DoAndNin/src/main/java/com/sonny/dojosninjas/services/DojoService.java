package com.sonny.dojosninjas.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sonny.dojosninjas.models.Dojo;
import com.sonny.dojosninjas.repo.DojoRepo;

@Service
public class DojoService {
	@Autowired
	private DojoRepo dojoServ;
	

	// Read All
		public List<Dojo> allDojos(){
			return dojoServ.findAll();
		}

		// Create
		public Dojo createDojo(Dojo d) {
			return dojoServ.save(d);
		}

		// Read One
		public Dojo findDojo(Long id) {
			Optional<Dojo> dojo = dojoServ.findById(id);
			if(dojo.isPresent()) {
				return dojo.get();
			} else {
				return null;
			}
		}

		// Update
		public Dojo updateDojo(Dojo d) {
			return dojoServ.save(d);
		}

		// Delete
		public void deleteDojo(Long id) {
			dojoServ.deleteById(id);
		}
}
