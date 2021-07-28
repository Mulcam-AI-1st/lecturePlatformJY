package com.mulcam.lec.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/lecture")
public class LectureControllerImpl implements LectureController {

  @Override
  @GetMapping("/lecIntro")
  public String lecIntro() {
    return "/lecture/lecIntro";
  }


}
