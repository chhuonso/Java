package com.sonny.mvc.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;

import com.sonny.mvc.models.Book;
import com.sonny.mvc.repo.BookRepository;



//			 --------C R U D---------

@Service
public class BookService {
    // adding the book repository as a dependency
    private final BookRepository bookRepository;
    
    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }
    
    
//    READ ALL
    // returns all the books
    public List<Book> allBooks() {
        return bookRepository.findAll();
    }
//    CREATE
    // creates a book
    public Book createBook(Book book) {
        return bookRepository.save(book);
    }
//    READ ONE
    // retrieves a book
    public Book findBook(Long id) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if(optionalBook.isPresent()) {
            return optionalBook.get();
        } else {
            return null;
        }
    }
//	UPDATE
    // updates and save a book   	
    public Book updateBook(Book book) {
        return bookRepository.save(book);
    }
    
//    DELETE
    // deletes a book from id   
	public void deleteBook(Long id) {
		bookRepository.deleteById(id);
		
	}
}


// create package - class - RestController - BookApi next>>>>>