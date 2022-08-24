package com.sonny.booklclub.service;

import java.util.Optional;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.sonny.booklclub.models.LoginUser;
import com.sonny.booklclub.models.User;
import com.sonny.booklclub.repositories.UserRepo;


@Service
public class UserService {
//  CRUD
	@Autowired
	private UserRepo userRepo;
	
	public User findUser(Long id) {
		Optional<User> maybeUser = userRepo.findById(id);
			return (maybeUser.isPresent()) ? maybeUser.get() : null;
		}

	
// REGISTER USER
	
//	passed in from the form result /register 
	public User register(User newUser, BindingResult result) {
		Optional<User> maybeUser = userRepo.findByEmail(newUser.getEmail());

		// Validation for if the email is already in the database
		if (maybeUser.isPresent()) {
			result.rejectValue("email", "regError", "This Email already exists");
		}

		// Validation for is the passwords don't match
		if (!newUser.getPassword().equals(newUser.getConfirm())) {
			result.rejectValue("confirm", "regError", "Password must match");
		}

		if (result.hasErrors()) {
			return null;
		}

		// Hash password and save user info to database
		String hashed = BCrypt.hashpw(newUser.getPassword(), BCrypt.gensalt());
		newUser.setPassword(hashed);
		return userRepo.save(newUser);
	}
	
// LOGIN USER
	public User login(LoginUser newLogin, BindingResult result) {

		Optional<User> maybeUser = userRepo.findByEmail(newLogin.getEmail());

		// Validation to see if user is in the database or not
		if (!maybeUser.isPresent()) {
			result.rejectValue("email", "loginError", "Invalid email and/or password");
			return null;
		}

		// Get user from database if user exists
		User user = maybeUser.get();

		// Validation to make sure password entered matches hashed password in database
		if (!BCrypt.checkpw(newLogin.getPassword(), user.getPassword())) {
			result.rejectValue("password", "Matches", "Invalid email and/or password");
		}

		return (result.hasErrors()) ? null : user;
	
	}
	
}
