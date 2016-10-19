package com.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class WebController {
   
  @RequestMapping(value = "/askForApodPage", method = RequestMethod.GET)
  public String redirectHttp() {
     
      return "redirect:http://apod.nasa.gov/apod/astropix.html";
  }
   
   @RequestMapping(value = "/redirect_req", method = RequestMethod.GET)
   public String redirect() {
     
      return "redirect:apod.nasa.gov/apod/astropix.html";
   }
}