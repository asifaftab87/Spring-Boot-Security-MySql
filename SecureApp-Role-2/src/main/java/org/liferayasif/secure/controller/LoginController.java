package org.liferayasif.secure.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.liferayasif.secure.model.User;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@GetMapping(value = {"/", "/login"})
	public ModelAndView login(@ModelAttribute User user, HttpServletRequest req, HttpServletResponse res) {
		
		ModelAndView mav = new ModelAndView("login");
		
        //User user = new User();
        mav.addObject("user", user);
        
        return mav;
        
	}
	
	@GetMapping(value = "/registration")
	public ModelAndView register() {
		
		ModelAndView mav = new ModelAndView("registration");
		
        User user = new User();
        mav.addObject("user", user);
        
        return mav;
        
	}
	
	@GetMapping(value = "/welcome")
	public ModelAndView welcome(@ModelAttribute User user, HttpServletRequest req, HttpServletResponse res) {
		

		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();
		String username;
		
		if (principal instanceof UserDetails) {
			username = ((UserDetails)principal).getUsername();
		} 
		else {
			username = principal.toString();
		}
		ModelAndView mav = new ModelAndView("welcome");
       
        mav.addObject("name", username);
        
        return mav;
        
	}
	
	
	
}
