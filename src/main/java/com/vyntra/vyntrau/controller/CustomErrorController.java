package com.vyntra.vyntrau.controller;

import javax.servlet.http.HttpServletResponseWrapper;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class CustomErrorController implements ErrorController {


	Logger log= LoggerFactory.getLogger(this.getClass());
	
	@Override
	public String getErrorPath() {
		return "/error";
	}
	@RequestMapping("/error")
	public ModelAndView handleError(HttpServletResponseWrapper response) {
		ModelAndView modelAndView = new ModelAndView();
		
		if(response.getStatus() == HttpStatus.NOT_FOUND.value()) {
			modelAndView.addObject("code", "404");
			modelAndView.addObject("msg","Page Not Found");
			log.error("Page Not Found "+response.getStatus());

		}
		else if(response.getStatus() == HttpStatus.FORBIDDEN.value()) {
			modelAndView.addObject("code", "403");
			modelAndView.addObject("msg", "Access Not Granted");
			log.error("Access Not Granted "+response.getStatus());
		}
		else if(response.getStatus() == HttpStatus.BAD_REQUEST.value()) {
			modelAndView.addObject("code", "400");
			modelAndView.addObject("msg", "bad req");
			log.error("Access Not Granted "+response.getStatus());
		}
		else if(response.getStatus() == HttpStatus.INTERNAL_SERVER_ERROR.value()) {
			modelAndView.addObject("msg", "I'm probably working on something that has  blown up");
			log.error("server error "+response.getStatus());
		}
		else {
			modelAndView.addObject("msg", "Things are little unstable here. I suggest come back later");
			log.error("Error has occured "+response.getStatus());
		}

		modelAndView.setViewName("error.jsp");
		return modelAndView;
	}
	

}
