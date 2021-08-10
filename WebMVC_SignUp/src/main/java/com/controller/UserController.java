package com.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.bean.UserBean;
import com.dao.UserDao;

@Controller
public class UserController {

	@Autowired
	UserDao dao;
	
	@RequestMapping(value = "Signup", method = RequestMethod.GET)
	public String SignupUser(Model model) {
		model.addAttribute("user", new UserBean());
		return "signup";
	}
	
//	@RequestMapping(value = "/", method = RequestMethod.GET)
//	public String SignupUser() {
//		return "signup";
//	}
	
	@RequestMapping(value = "saveUser",method = RequestMethod.POST)
	public String saveUser(@Valid @ModelAttribute("user") UserBean user, BindingResult result ,Model model) {
		int id = (int) (Math.random() * 1000000);
		user.setId(id);
		if(result.hasErrors()) {
			model.addAttribute("user",user);
			return "signup";
		}else {
			dao.insert(user);
			model.addAttribute("user", user);
//			return "signup";
			return "redirect:/userData"; 
		}
		
	}
	
	@RequestMapping(value = "userData")
	public String getUserData(Model model){
		model.addAttribute("showdata",dao.showData());
		return "userData";
	
	}
	
	@RequestMapping(value = "/delete")
	public String deleteUser(UserBean user,Model model) {
		int id = user.getId();
		System.out.println("userid: "+id);
		model.addAttribute("showdata",dao.delete(id));
		return "userData";
	}
	
	@GetMapping(value = "/update/{id}")
	public String updateUser(@PathVariable("id") int id,Model model) {
		UserBean bean= dao.getDataById(id);
		
		model.addAttribute("user",bean);
		return "updateUser";
	}
	
	@PostMapping("/editUser")
	public String EditUser(UserBean user,Model model) {
		model.addAttribute("uuser",dao.updateUser(user));
		return "redirect:/userData";
	}	
}