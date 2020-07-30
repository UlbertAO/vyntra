package com.vyntra.vyntrau.exception;

public class EmailAlreadyExist extends Exception{
	
	public EmailAlreadyExist(String email) {
		super("Email \""+email+"\" Already Used.");
		}


}
