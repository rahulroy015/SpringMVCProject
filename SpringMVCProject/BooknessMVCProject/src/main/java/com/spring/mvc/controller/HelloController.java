package com.spring.mvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HelloController {
  public HelloController(){
    System.out.println("Hello controller consructor called");
  }
  @RequestMapping("/greet")
  public String hellopage(){
    System.out.println("greeta called");
    return "hello";
  }
}
