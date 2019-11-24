package org.liferayasif.secure.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.liferayasif.secure.model.Role;
import org.liferayasif.secure.model.User;
import org.liferayasif.secure.service.MyUserDetailsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@Autowired
	private MyUserDetailsService userService;
	
	@GetMapping(value = {"/", "/login"})
	public ModelAndView login(@ModelAttribute User user, HttpServletRequest req, HttpServletResponse res) {
		
		ModelAndView mav = new ModelAndView("login");
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
	
	@PostMapping(value = "/registration")
	public ModelAndView registerPost(@ModelAttribute User user, HttpServletRequest req, HttpServletResponse res) {
		
		ModelAndView mav = new ModelAndView("registration");
		
		User user2 = userService.findByEmail(user.getEmail());
		
		if(user2!=null) {
			mav.addObject("userExists", true);
			mav.setViewName("login");
			return mav;
		}
		
        mav.addObject("user", user);
        userService.saveUser(user, "ROLE_USER");
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
	
	@GetMapping("/forgotPassword")
	public ModelAndView forgotPassword() {
		
		ModelAndView mav = new ModelAndView("forgot-password");
		
		return mav;
	}
	
	@PostMapping("/forgotPassword")
	public ModelAndView forgotPassword(@ModelAttribute User user, HttpServletRequest req, HttpServletResponse res, HttpSession session) {
		
		ModelAndView mav = new ModelAndView("change-password");
		
		User user2 = userService.findByEmail(user.getEmail());
		
		if(user2==null) {
			mav.setViewName("change-password"); 
			return mav;
		}
		session.setAttribute("email", value);
		return mav;
	}
}
