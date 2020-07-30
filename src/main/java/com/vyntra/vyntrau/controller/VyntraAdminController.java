package com.vyntra.vyntrau.controller;

import java.util.Collection;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.vyntra.vyntrau.exception.EmailAlreadyExist;
import com.vyntra.vyntrau.exception.PhoneNumberAlreadyUsed;
import com.vyntra.vyntrau.model.Products;
import com.vyntra.vyntrau.model.Vyntrauser;
import com.vyntra.vyntrau.security.AuthGroup;
import com.vyntra.vyntrau.service.AdminService;

import freemarker.template.TemplateException;
import freemarker.template.TemplateModelException;
@Controller
public class VyntraAdminController {
	
	Logger log= LoggerFactory.getLogger(this.getClass());
	
	@Autowired
	AdminService adminService;
	
	@GetMapping("/adminPanel")
	public ModelAndView adminPanel(HttpServletRequest req)
	{
		ModelAndView mv=new ModelAndView();
		mv.setViewName("adminPanel.jsp");
		mv.addObject("username",req.getUserPrincipal().getName());
		mv.addObject("totalNoOfProducts",adminService.totalNoOfProducts());
		mv.addObject("totalNoOfUsers",adminService.totalNoOfUsers());
		mv.addObject("totalNoOfAdmins",adminService.totalNoOfAdmins());
		
	
		return mv;
	}
	
	
	@PostMapping("/addpro")
	public ModelAndView addproduct(@Valid Products product,BindingResult bindingResult,HttpServletRequest req)
	{
		adminService.addProduct(product);
		
		ModelAndView mv = new ModelAndView("showProducts");
		mv.addAllObjects(adminService.listProducts());
		mv.addObject("username",req.getUserPrincipal().getName());
		
		log.info("ADMIN "+req.getUserPrincipal().getName()+" added a product with id"+product.getPid());
		
		return mv;		
	}
	
	@PostMapping("/editPro")
	public ModelAndView editproduct(@Valid Products product,BindingResult bindingResult,HttpServletRequest req)
			throws Exception,TemplateModelException
	{
		ModelAndView mv = new ModelAndView();
		System.out.println(product.getPid());
		Products pro = adminService.editProduct(product);
		
		System.out.println(pro.getPrice());
		
		mv.setViewName("editProduct");
		mv.addObject("product", pro);
		mv.addObject("username",req.getUserPrincipal().getName());
	
		log.info("ADMIN "+req.getUserPrincipal().getName()+" modified content of product details with id" +product.getPid());
		
		return mv;		
		
	}	
	
	@PostMapping("/deletePro")
	public ModelAndView deleteproduct(@Valid Products product,BindingResult bindingResult,HttpServletRequest req)
	{
		System.out.println(product.getPid());
		adminService.deleteProduct(product);
	

		ModelAndView mv = new ModelAndView("showProducts");
		mv.addAllObjects(adminService.listProducts());
		mv.addObject("username",req.getUserPrincipal().getName());
		
		log.info("ADMIN "+req.getUserPrincipal().getName()+" deleted a product with id "+product.getPid());
		
		return mv;
	}
	
	
	@GetMapping("/products")
	public ModelAndView listProducts(HttpServletRequest req) {
		ModelAndView mv =new ModelAndView("showProducts");
		mv.addAllObjects(adminService.listProducts());
		mv.addObject("username",req.getUserPrincipal().getName());
		
		log.info("ADMIN "+req.getUserPrincipal().getName()+" is now looking at product list");
		
		return mv;
	}


	@GetMapping("/listAdmins")
	public ModelAndView listAdmins(HttpServletRequest req) {

		System.out.println(adminService.listAdmins());
		
		ModelAndView mv = new ModelAndView("showUsers");
		mv.addAllObjects(adminService.listAdmins());
		mv.addObject("username",req.getUserPrincipal().getName());
		mv.addObject("list", "Admin List");
		
		log.info("ADMIN "+req.getUserPrincipal().getName()+" is now looking at admin list");
		
		return mv;
	}

	@GetMapping("/listUsers")
	public ModelAndView listUsers(HttpServletRequest req) {

		ModelAndView mv = new ModelAndView("showUsers");
		mv.addAllObjects(adminService.listUsers());
		mv.addObject("username",req.getUserPrincipal().getName());
		mv.addObject("list", "User List");
		
		log.info("ADMIN "+req.getUserPrincipal().getName()+" is now looking at the full detail of users");
		
		return mv;
	}
	
	@GetMapping("/listAuth")
	public ModelAndView listAuth(HttpServletRequest req) {

		ModelAndView mv = new ModelAndView("showUsers");
		mv.addAllObjects(adminService.listAuth());
		mv.addObject("username",req.getUserPrincipal().getName());
		mv.addObject("list", "Auth List");
		
		log.info("ADMIN "+req.getUserPrincipal().getName()+" is looking at auth list");
		
		return mv;
	}

	@PostMapping("/deleteUser")
	public ModelAndView deleteUser(@Valid Vyntrauser user,BindingResult bindingResult,HttpServletRequest req)
	{
		System.out.println(user.getUid());
		adminService.deleteUser(user);
	

		ModelAndView mv = new ModelAndView("showUsers");
		mv.addAllObjects(adminService.listUsers());
		mv.addObject("username",req.getUserPrincipal().getName());
		mv.addObject("list", "ALL User List");
		
		log.info("ADMIN "+req.getUserPrincipal().getName()+" deleted a user with id "+user.getUid());
		
		return mv;
	}
	

	@PostMapping("/editUser")
	public ModelAndView editUser(@Valid Vyntrauser user,BindingResult bindingResult,HttpServletRequest req)
			throws Exception,TemplateModelException
	{
		ModelAndView mv = new ModelAndView();
		System.out.println(user.getUid());
		Vyntrauser usor = adminService.editUser(user);
	
		mv.setViewName("editUser");
		mv.addObject("user", usor);
		mv.addObject("username",req.getUserPrincipal().getName());
	
		log.info("ADMIN "+req.getUserPrincipal().getName()+" modified the content of user details with user id "+user.getUid());
		
		return mv;		
		
	}	
	@PostMapping("/setAuth")
	public ModelAndView editAuth(@Valid AuthGroup authGroup,BindingResult bindingResult,HttpServletRequest req)
			throws Exception,TemplateModelException
	{
		ModelAndView mv = new ModelAndView();
		System.out.println(authGroup.getUsername());
		adminService.setAuth(authGroup);
		
		mv.setViewName("showUsers");
		mv.addAllObjects(adminService.listAuth());
		mv.addObject("username",req.getUserPrincipal().getName());
		mv.addObject("list", "Auth List");
		
		log.info("ADMIN "+req.getUserPrincipal().getName()+" changed the role of user "+authGroup.getUsername()+"to "+authGroup.getAuthgroup());
		
		return mv;		
		
	}	
	
	
}
