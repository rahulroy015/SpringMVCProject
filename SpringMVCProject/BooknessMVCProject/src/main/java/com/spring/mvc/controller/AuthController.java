//package com.spring.mvc.controller;
//
//import com.spring.mvc.dao.User;
//import com.spring.mvc.service.UserService;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//
//import org.springframework.ui.Model;
//import org.springframework.validation.BindingResult;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PostMapping;
//
//@Controller
//public class AuthController {
//
//  @Autowired
//  private UserService userService;
//
//  @GetMapping("/login")
//  public String login(Model model) {
//    model.addAttribute("user", new User());
//    return "login";
//  }
//
//  @PostMapping("/login")
//  public String login(@ModelAttribute("user") User user, BindingResult bindingResult) {
//    User authUser = userService.authenticate(user);
//    if (authUser == null) {
//      bindingResult.rejectValue("username", "error.user", "Invalid username or password");
//      return "login";
//    }
//    // Redirect to the user dashboard page after successful login
//    return "redirect:/dashboard";
//  }
//
//  @GetMapping("/register")
//  public String register(Model model) {
//    model.addAttribute("user", new User());
//    return "register";
//  }
//
//  @PostMapping("/register")
//  public String register(@ModelAttribute("user") @Valid User user, BindingResult bindingResult) {
//    if (bindingResult.hasErrors()) {
//      return "register";
//    }
//    userService.register(user);
//    // Redirect to the login page after successful registration
//    return "redirect:/login";
//  }
//}
//
