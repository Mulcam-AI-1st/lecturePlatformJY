package com.mulcam.lec.dao;

import java.util.List;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.mulcam.lec.vo.Board;

@Mapper
@Repository("boardDAO")
public interface BoardDAO {
  int selectMaxBoardNum() throws Exception;

  void insertBoard(Board board) throws Exception;

  int selectBoardCount() throws Exception;

  List<Board> selectBoardList(int startrow) throws Exception;

  Board selectBoard(int board_num) throws Exception;

  void updateReadCount(int board_num) throws Exception;

  void updateBoardReSeq(Board board) throws Exception;

  String selectPassword(int board_num) throws Exception;

  void updateBoard(Board board) throws Exception;

  void deleteBoard(int board_num) throws Exception;


}
