package com.mulcam.lec.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MainController {
  @RequestMapping(value = "/")
  public ModelAndView main() {
    ModelAndView mav = new ModelAndView("/");
    mav.addObject("page", "home");
    return mav;
  }
}
