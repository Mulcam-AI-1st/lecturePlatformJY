package com.mulcam.lec.controller;

import java.io.File;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;
import com.mulcam.lec.service.BoardService;
import com.mulcam.lec.vo.Board;
import com.mulcam.lec.vo.PageInfo;

@Controller
@RequestMapping("/board")
public class BoardControllerImpl implements BoardController {
  @Autowired
  private BoardService boardService;

  @Override
  @GetMapping("/writeform")
  public String writeform() {
    return "/board/writeform";
  }

  @Override
  @PostMapping("/boardwrite")
  public ModelAndView boardWrite(@ModelAttribute Board board, MultipartHttpServletRequest multi) {
    ModelAndView mv = new ModelAndView();
    String path = multi.getServletContext().getRealPath("/uploadLecture/");
    try {
      MultipartFile orgfile = multi.getFile("upfile");
      File destFile = new File(path + orgfile.getOriginalFilename());
      board.setBOARD_FILE(orgfile.getOriginalFilename());
      orgfile.transferTo(destFile);
      boardService.regBoard(board); // db insert
      mv.setViewName("redirect:/board/boardlist");
    } catch (Exception e) {
      e.printStackTrace();
      mv.addObject("err", "새 글 등록 실패");
      mv.setViewName("/board/err");
    }
    return mv;
  }

  @Override
  @RequestMapping(value = "boardlist", method = {RequestMethod.GET, RequestMethod.POST})
  public ModelAndView boardList(
      @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
    PageInfo pageInfo = new PageInfo();
    ModelAndView mv = new ModelAndView();
    try {
      List<Board> articleList = boardService.getBoardList(page, pageInfo); // pageInfo 출력해야해. 붕어빵틀
                                                                           // 줄테니 page값으로 만들어와
      mv.addObject("pageInfo", pageInfo); // 하단 start end page값 넘길게
      mv.addObject("articleList", articleList); // 게시글10개 리스트 넘길게
      mv.setViewName("/board/listform"); // 화면에 이걸 띄워줘
    } catch (Exception e) {
      e.printStackTrace();
      mv.addObject("err", e.getMessage());
      mv.setViewName("/board/err");
    }
    return mv;
  }

  @Override
  @GetMapping("/boarddetail")
  public ModelAndView boardDetail(@RequestParam("board_num") int board_num,
      @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
    ModelAndView mv = new ModelAndView();
    try {
      Board board = boardService.getBoard(board_num);
      mv.addObject("article", board);
      mv.addObject("page", page);
      mv.setViewName("/board/viewform");
    } catch (Exception e) {
      e.printStackTrace();
      mv.addObject("err", "글 조회 실패");
      mv.setViewName("/board/err");
    }
    return mv;
  }

  @Override
  @GetMapping("/replyform")
  public ModelAndView replyform(@RequestParam("board_num") int board_num,
      @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
    ModelAndView mv = new ModelAndView();
    try {
      Board board = boardService.getBoard(board_num);
      mv.addObject("article", board);
      mv.addObject("page", page);
      mv.setViewName("/board/replyform");
    } catch (Exception e) {
      e.printStackTrace();
      mv.addObject("err", "조회 실패");
      mv.setViewName("/board/err");
    }
    return mv;
  }

  @Override
  @PostMapping("boardreply")
  public ModelAndView boardReply(
      @RequestParam(value = "page", required = false, defaultValue = "1") int page,
      @ModelAttribute Board board) {
    ModelAndView mv = new ModelAndView();
    board.setBOARD_FILE("");
    try {
      boardService.regReply(board);
      mv.addObject("page", page);
      mv.setViewName("redirect:/board/boardlist");
    } catch (Exception e) {
      e.printStackTrace();
      mv.addObject("err", "답글 등록 실패");
      mv.setViewName("/board/err");
    }
    return mv;
  }

  @Override
  @GetMapping("/modifyform")
  public ModelAndView modifyForm(@RequestParam("board_num") int board_num) {
    ModelAndView mv = new ModelAndView();
    try {
      Board board = boardService.getBoard(board_num);
      mv.addObject("article", board);
      mv.setViewName("/board/modifyform");
    } catch (Exception e) {
      e.printStackTrace();
      mv.addObject("err", "조회 실패");
      mv.setViewName("/board/err");
    }
    return mv;
  }

  @Override
  @PostMapping("boardmodify")
  public ModelAndView boardModify(@ModelAttribute Board board) {
    ModelAndView mv = new ModelAndView();
    try {
      boardService.modifyBoard(board);
      mv.addObject("board_num", board.getBOARD_NUM());
      mv.setViewName("redirect:/board/boarddetail");
    } catch (Exception e) {
      e.printStackTrace();
      mv.addObject("err", e.getMessage());
      mv.setViewName("/board/err");
    }
    return mv;
  }

  @Override
  @GetMapping("/deleteform")
  public ModelAndView deleteform(@RequestParam("board_num") int board_num,
      @RequestParam(value = "page", required = false, defaultValue = "1") int page) {
    ModelAndView mv = new ModelAndView();
    mv.addObject("page", page);
    mv.addObject("board_num", board_num);
    mv.setViewName("/board/deleteform");
    return mv;
  }

  @Override
  @PostMapping("/boarddelete")
  public ModelAndView boardDelete(@RequestParam("board_num") int board_num,
      @RequestParam(value = "page", required = false, defaultValue = "1") int page,
      @RequestParam("BOARD_PASS") String password) {
    ModelAndView mv = new ModelAndView();
    try {
      boardService.removeBoard(board_num, password);
      mv.addObject("page", page);
      mv.setViewName("redirect:/board/boardlist");
    } catch (Exception e) {
      e.printStackTrace();
      mv.addObject("err", e.getMessage());
      mv.setViewName("/board/err");
    }
    return mv;
  }
}
