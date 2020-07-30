package com.vyntra.vyntrau.exception;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.method.annotation.ResponseEntityExceptionHandler;

@ControllerAdvice
public class CustomGlobalExceptionHandler extends ResponseEntityExceptionHandler {
	

	Logger log= LoggerFactory.getLogger(this.getClass());
	
	@ExceptionHandler(Exception.class)
	  public  ModelAndView handleAllExceptions(Exception ex,
			  WebRequest request,HttpServletRequest req, HttpServletResponse resp) {
		
		ModelAndView mv = new ModelAndView("error.jsp");
		mv.addObject("msg", "Things are little unstable here"
				+ ". I suggest come back later!!<br>"+ex.getMessage());

		log.error(resp.getStatus()+"---"+ex.getMessage());
		
		return mv;
	}
	
	  @ExceptionHandler(UsernameAlreadyExist.class)
	  public ModelAndView handleUserAlreadyExistException(UsernameAlreadyExist ex,
			  WebRequest request) {
	    ModelAndView mv = new ModelAndView("reg.jsp");
	    
		mv.addObject("msg",ex.getMessage());
	    return mv;
	  
	  }

	  @ExceptionHandler(EmailAlreadyExist.class)
	  public ModelAndView handleEmailAlreadyExistException(EmailAlreadyExist ex,
			  WebRequest request) {
	    ModelAndView mv = new ModelAndView("reg.jsp");
	    mv.addObject("msg",ex.getMessage());
	    return mv;
	  }


	  @ExceptionHandler(PhoneNumberAlreadyUsed.class)
	  public ModelAndView handlePhoneNumberAlreadyUsedException(PhoneNumberAlreadyUsed ex,
			  WebRequest request) {
	    ModelAndView mv = new ModelAndView("reg.jsp");
	    mv.addObject("msg",ex.getMessage());
	    return mv;
	  }

}
