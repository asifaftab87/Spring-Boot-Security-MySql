package org.liferayasif.secure.controller;

import org.liferayasif.secure.model.User;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@GetMapping(value = {"/", "/login"})
	public ModelAndView login() {
		
		ModelAndView mav = new ModelAndView("login");
		
        User user = new User();
        mav.addObject("user", user);
        
        return mav;
        
	}
	
	@GetMapping(value = "/registration")
	public ModelAndView register() {
		
		ModelAndView mav = new ModelAndView("register");
		
        User user = new User();
        mav.addObject("user", user);
        
        return mav;
        
	}
	
}
