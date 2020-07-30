package com.vyntra.vyntrau.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class VyntraProductsController {

	@GetMapping("/men")
	public String men()
	{
		
		return "men.jsp";
	}
	@GetMapping("/women")
	public String  women()
	{
		
		return "women.jsp";
	}
	@GetMapping("/homeapp")
	public String  homeapp()
	{
		
		return "homeapp.jsp";
	}
	@GetMapping("/personal")
	public String  personal()
	{
		
		return "personal.jsp";
	}
	@GetMapping("/gym")
	public String  gym()
	{
		
		return "gym.jsp";
	}
	@GetMapping("/kitchen")
	public String  kitchen()
	{
		
		return "kitchen.jsp";
	}
	@GetMapping("/industry")
	public String  indus()
	{
		
		return "industry.jsp";
	}
	
	@GetMapping("/monsoon")
	public String  monsoon()
	{
		
		return "monsoon.jsp";
	}
}
