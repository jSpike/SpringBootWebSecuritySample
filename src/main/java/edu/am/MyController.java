package edu.am;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MyController {
	
	@RequestMapping(value="/hello")
	public String get() {
		return "helloworld";
	}
	
	@RequestMapping(value = "/ad2Dashboard", method = RequestMethod.GET)
    public ModelAndView hello(HttpServletRequest request,  @ModelAttribute("mapping1Form")  String mapping1FormObject,            
            final Model model)  {
		 Authentication auth = SecurityContextHolder.getContext().getAuthentication();	
		 ModelAndView mav = new ModelAndView();
		 String name = auth.getName();
		 if (request.isUserInRole("ROLE_USER")) {
			 System.out.println("User Role");
			 mav.setViewName("helloworld");
			 mav.addObject("username", name);
	        }	 
		 model.addAttribute("transformationForm", mapping1FormObject);
        return mav;
    }
}
