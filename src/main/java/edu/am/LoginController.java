/*
 * Copyright 2012-2014 the original author or authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package edu.am;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Date;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.security.authentication.jaas.memory.InMemoryConfiguration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView  login(
    		@RequestParam(value = "error", required = false) String error,
    		@RequestParam(value = "logout", required = false) String logout, Model models) {	
    		ModelAndView model = new ModelAndView();
    		if (error != null) {
    			model.addObject("error", "Invalid username and password!");
    		}
     
    		if (logout != null) {
    			model.addObject("msg", "You've been logged out successfully.");
    		}
    		model.setViewName("login");
    		
    		return model;
     
    	}
	
	 @RequestMapping(value = "/helloworld", method = RequestMethod.GET)
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