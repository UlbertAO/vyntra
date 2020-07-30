package com.vyntra.vyntrau.controller;


import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.servlet.ModelAndView;

import com.vyntra.vyntrau.exception.EmailAlreadyExist;
import com.vyntra.vyntrau.exception.PhoneNumberAlreadyUsed;
import com.vyntra.vyntrau.exception.UsernameAlreadyExist;
import com.vyntra.vyntrau.model.Vyntrauser;
import com.vyntra.vyntrau.service.UserService;

@Controller
public class VyntraUserController {
	
	@Autowired
	UserService userService;
	
	Logger log= LoggerFactory.getLogger(this.getClass());
	
	
	
	
	boolean isPresent(String reqString, String refString)
	{
	    if(refString.indexOf(reqString) >= 0)
	        return true;
	    else
	        return false;
	}
	
	@GetMapping("/")
	public String index()
	{	

        final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (null != authentication && !("anonymousUser").equals(authentication.getName()))
        	return "redirect:/vyntra";
        return "index.jsp";
	}
	
	@GetMapping("/login")
	public ModelAndView login()
	{


		ModelAndView mv=new ModelAndView();
        final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (null != authentication && !("anonymousUser").equals(authentication.getName())) {
        	mv.setViewName("redirect:/vyntra");
        	return mv;
        }
        mv.setViewName("login.jsp");
		return mv;
	}
	
	@GetMapping("/contactus")
	public ModelAndView contactus()
	{
		ModelAndView mv=new ModelAndView("contactus.jsp");	
		return mv;
	}
	
	
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest req)
	{
		log.info("User/Admin "+req.getUserPrincipal().getName()+" is logged out");
		return "logout.jsp";
	}
	
	@GetMapping("/successLogin")
	public String successLogin(HttpServletRequest req)
	{
        if (req.isUserInRole("ADMIN")) {

    		log.info("ADMIN "+req.getUserPrincipal().getName()+" is logged in");
            return "redirect:/adminPanel";
        }

		log.info("USER "+req.getUserPrincipal().getName()+" is logged in");
        return "redirect:/vyntra";
    }
	
	@GetMapping("/vyntra")
	public String vyntra(HttpServletRequest req)
	{
        return "Vyntra.jsp";
    }
	
	
	@GetMapping("/reg")
	public ModelAndView register()
	{
		ModelAndView mv=new ModelAndView();
        final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        if (null != authentication && !("anonymousUser").equals(authentication.getName())) {
        	mv.setViewName("redirect:/vyntra");
        }	
		mv.setViewName("reg.jsp");
        
		return mv;
	}
	
	@PostMapping("/reg")
	public ModelAndView register(@Valid Vyntrauser vyntraUser,BindingResult bindingResult,HttpServletRequest req) 
			throws UsernameAlreadyExist, EmailAlreadyExist, PhoneNumberAlreadyUsed 
	{

		ModelAndView mv= new ModelAndView("redirect:/login");
		
		userService.addUser(vyntraUser);
		
		
		String referer = req.getHeader("Referer");
		System.out.println(referer);
		if (referer!=null){
			if (isPresent("/EditUserDetails", referer)) {
				mv.setViewName("redirect:/account");

				log.info(vyntraUser.getUsername()+"modified his/her details");
			}
			else if (isPresent("/reg", referer)) {
				mv.setViewName("redirect:/login");
	
				mv.addObject("regStat","registered");
				

				log.info(vyntraUser.getUsername()+" is registered");
			}
			
			else if (isPresent("/editUser", referer)) {
				mv.setViewName("redirect:/listUsers");

				log.info(req.getUserPrincipal().getName()+"modified details of "+vyntraUser.getUsername());
	
			}
	
			else if (isPresent("/listUser", referer)) {
				mv.setViewName("redirect:/listUsers");

	    		log.info("ADMIN "+req.getUserPrincipal().getName()+"modified details of "+vyntraUser.getUsername());
	
			}
			
			else
				mv.setViewName("redirect:/reg");
			}
		else
			mv.setViewName("redirect:/vyntra");
		
		return mv;
	}

	@GetMapping("/EditUserDetails")
	public ModelAndView Edit(HttpServletRequest req) throws Exception
	{
		ModelAndView mv=new ModelAndView("EditUserDetails");
		System.out.println(req.getUserPrincipal().getName());
		mv.addObject("username",req.getUserPrincipal().getName());
		Vyntrauser user = userService.editUser(req.getUserPrincipal().getName());
		mv.addObject("user",user);
		
		return mv;
	}
	@GetMapping("/account")
	public ModelAndView account (HttpServletRequest req)throws Exception
	{
		ModelAndView mv=new ModelAndView("account.jsp");
		System.out.println(req.getUserPrincipal().getName());
		mv.addObject("username",req.getUserPrincipal().getName());
		Vyntrauser user = userService.editUser(req.getUserPrincipal().getName());
		mv.addObject("user",user);
		


		return mv;
	}

}
