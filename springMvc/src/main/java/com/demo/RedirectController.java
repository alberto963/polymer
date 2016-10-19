package com.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;

@Controller
public class RedirectController {

    @RequestMapping( value = "/redirectWithRedirectPrefix", method = RequestMethod.GET )
    public ModelAndView redirectWithUsingRedirectPrefix(ModelMap model) {
        //model.addAttribute("attribute", "www.google.com");
        
        //return new ModelAndView("redirect:/redirectedUrl", model);
        return new ModelAndView("redirect:/apod.nasa.gov/apod/astropix.html", model);
    }
}