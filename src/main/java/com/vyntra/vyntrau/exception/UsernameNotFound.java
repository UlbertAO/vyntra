package com.vyntra.vyntrau.exception;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(HttpStatus.NOT_FOUND)
public class UsernameNotFound extends Exception{

	public UsernameNotFound(String username) {
		super("Username "+username+"Not Found");
		}
}
