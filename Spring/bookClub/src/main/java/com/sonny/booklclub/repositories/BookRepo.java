package com.sonny.booklclub.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sonny.booklclub.models.Book;


@Repository
public interface BookRepo extends CrudRepository<Book, Long> {
	
	List<Book> findAll();
	
	
}
