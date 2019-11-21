package org.liferayasif.secure.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.liferayasif.secure.model.Page;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.support.RequestContextUtils;

@Controller
public class StaticService {
	
	
	public static List<Page> getAllPage(HttpServletRequest request){
		ApplicationContext ac = RequestContextUtils.findWebApplicationContext(request);
		
		PageService ps = ac.getBean(PageService.class);
		
		return ps.findAll();
	}
	
	public static List<Page> findByParentId(HttpServletRequest request, int parentId){
		ApplicationContext ac = RequestContextUtils.findWebApplicationContext(request);
		
		PageService ps = ac.getBean(PageService.class);
		
		return ps.findByParentId(parentId);
	}

}
