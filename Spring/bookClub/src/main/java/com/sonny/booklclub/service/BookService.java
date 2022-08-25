package com.sonny.booklclub.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sonny.booklclub.models.Book;
import com.sonny.booklclub.repositories.BookRepo;


@Service
public class BookService {

	@Autowired
	private BookRepo bookRepo;

	
//	C	R	U	D
	// Read All
	public List<Book> allBooks() {
		return bookRepo.findAll();
	}

	// Create
	public Book createBook(Book b) {
		return bookRepo.save(b);
	}

	// Read One
	public Book findBook(Long id) {
		Optional<Book> maybeBook = bookRepo.findById(id);
		return maybeBook.isPresent() ? maybeBook.get() : null;
	}
	// Update
	public Book updateBook(Book b) {
		return bookRepo.save(b);
	}

	// Delete
	public void deleteBook(Long id) {
		bookRepo.deleteById(id);
	}
}
