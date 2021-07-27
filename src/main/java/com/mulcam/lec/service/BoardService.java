package com.mulcam.lec.service;

import java.util.List;
import com.mulcam.lec.vo.Board;
import com.mulcam.lec.vo.PageInfo;

public interface BoardService {
  void regBoard(Board board) throws Exception;

  List<Board> getBoardList(int page, PageInfo pageInfo) throws Exception;

  Board getBoard(int board_num) throws Exception;

  void regReply(Board board) throws Exception;

  void modifyBoard(Board board) throws Exception;

  void removeBoard(int board_num, String password) throws Exception;

}
