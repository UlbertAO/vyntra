package com.vyntra.vyntrau.exception;


public class UsernameAlreadyExist extends Exception {

	public UsernameAlreadyExist(String username) {
		super("Username \""+username+"\" Already Exist.Try <a href=\\\"/login\\\">logging in.</a>");
		}

}
