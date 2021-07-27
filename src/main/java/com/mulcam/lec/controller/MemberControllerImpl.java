package com.mulcam.lec.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.mulcam.lec.service.MemberService;
import com.mulcam.lec.vo.Member;

@Controller
@RequestMapping("/member") // url붙여주는
public class MemberControllerImpl implements MemberController {
  @Autowired
  MemberService memberService;

  @RequestMapping(value = "/login") // 브라우저 url 사용시: /member/login == a 태그
  public ModelAndView login() {
    ModelAndView mav = new ModelAndView("/main");
    mav.addObject("page", "./member/loginForm"); // ModelAndView는 views까지 보고 main.jsp 기준이므로
                                                 // ./member폴더로 이동후 찾음
    return mav;
  }

  @RequestMapping(value = "/login", method = RequestMethod.POST)
  public ModelAndView login(@RequestParam("id") String id,
      @RequestParam("password") String password, HttpServletRequest request) {
    ModelAndView mav = new ModelAndView("/main");
    try {
      memberService.login(id, password);
      HttpSession session = request.getSession();
      session.setAttribute("id", id);
      mav.addObject("page", "home");
    } catch (Exception e) {
      e.printStackTrace();
      mav.addObject("err", e.getMessage());
      mav.addObject("page", "err");
    }
    return mav;
  }

  @RequestMapping(value = "/logout")
  public ModelAndView logout(HttpServletRequest request) {
    ModelAndView mav = new ModelAndView("/main");
    HttpSession session = request.getSession();
    session.removeAttribute("id");
    mav.addObject("page", "home");
    return mav;
  }

  @RequestMapping(value = "/join")
  public ModelAndView join() {
    ModelAndView mav = new ModelAndView("/main");
    mav.addObject("page", "./member/joinForm");
    return mav;
  }

  @RequestMapping(value = "/join", method = RequestMethod.POST)
  public ModelAndView join(@ModelAttribute Member member) {
    ModelAndView mav = new ModelAndView("/main");
    try {
      memberService.join(member);
      mav.addObject("page", "home");
    } catch (Exception e) {
      e.printStackTrace();
      mav.addObject("err", e.getMessage());
      mav.addObject("page", "err");
    }
    return mav;
  }
}


