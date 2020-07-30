package com.vyntra.vyntrau.exception;

public class PhoneNumberAlreadyUsed extends Exception{
	
	public PhoneNumberAlreadyUsed(String phoneN) {
		super("Phone Number \""+phoneN+"\" Already Used.");
		}


}
