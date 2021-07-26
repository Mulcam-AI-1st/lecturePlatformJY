package com.mulcam.lec.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.OutputStream;
import java.net.URLEncoder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller

public class MainController {
  @RequestMapping(value = "/")
  public ModelAndView main() {
    ModelAndView mav = new ModelAndView("/main");
    mav.addObject("page", "home");
    return mav;
  }

  @GetMapping("/fileview/{filename}")
  public void fileview(@PathVariable String filename, HttpServletRequest request,
      HttpServletResponse response) {
    String path = request.getServletContext().getRealPath("/uploadHome/");
    File file = new File(path + filename);

    String sfilename = null;
    FileInputStream fis = null;
    try {
      // 한글 파일명 깨지지 않게 인코딩
      if (request.getHeader("User-Agent").indexOf("MSIE") > -1) { // ie
        sfilename = URLEncoder.encode(file.getName(), "utf-8");
      } else { // 나머지 브라우저
        sfilename = new String(file.getName().getBytes("utf-8"), "ISO-8859-1");
      }
      response.setCharacterEncoding("utf-8");
      response.setContentType("application/octet-stream;charset=utf-8");
      response.setHeader("Content-Disposition", "attachment; filename=\"" + sfilename + "\";");
      OutputStream out = response.getOutputStream();
      fis = new FileInputStream(file);
      FileCopyUtils.copy(fis, out);
      out.flush();
    } catch (Exception e) {
      e.printStackTrace();
    } finally {
      if (fis != null) {
        try {
          fis.close();
        } catch (Exception e) {
        }
      }
    }
  }


}
