package com.spring.mvc.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.mvc.entity.Users;
import com.spring.mvc.service.UsersService;

@Controller
public class RegisterController {

  @Autowired
  private UsersService usersService;

  @RequestMapping(value = "/register", method = RequestMethod.GET)
  public String showRegistrationPage(Model model) {
    model.addAttribute("user", new Users());
    return "register";
  }

  @RequestMapping(value = "/register", method = RequestMethod.POST)
  public String processRegistrationPage(@Valid @ModelAttribute("user") Users user, BindingResult result) {

    if (result.hasErrors()) {
      return "register";
    } else {
      usersService.saveUser(user);
      return "redirect:/login";
    }
  }
}
