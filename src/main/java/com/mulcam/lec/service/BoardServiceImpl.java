package com.mulcam.lec.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mulcam.lec.dao.BoardDAO;
import com.mulcam.lec.vo.Board;
import com.mulcam.lec.vo.PageInfo;

@Service
public class BoardServiceImpl implements BoardService {
  @Autowired
  private BoardDAO boardDAO;

  @Override
  public void regBoard(Board board) throws Exception {
    int board_num = boardDAO.selectMaxBoardNum() + 1;
    board.setBOARD_NUM(board_num);
    board.setBOARD_RE_REF(board_num);
    board.setBOARD_RE_LEV(0); // null값이면 시스템 죽음 세팅해줘야
    board.setBOARD_RE_SEQ(0);
    board.setBOARD_READCOUNT(0);
    boardDAO.insertBoard(board);
  }

  @Override
  public List<Board> getBoardList(int page, PageInfo pageInfo) throws Exception {
    int listCount = boardDAO.selectBoardCount(); // 총 게시글 수
    // 총 페이지 수 (올림처리 ex)게시글 95개, 페이지수 10개)
    int maxPage = (int) Math.ceil((double) listCount / 10); // ceil:올림처리
    // 현재 페이지에 보여줄 시작 페이지 수
    int startPage = (((int) ((double) page / 10 + 0.9)) - 1) * 10 + 1; // 현재페이지 기준 계산법
    // 현재 페이지에 보여줄 마지막 페이지 수
    int endPage = startPage + 10 - 1;
    if (endPage > maxPage) // 총 95페이지 인데 endPage 100페이지 일 수 없으므로
      endPage = maxPage;
    pageInfo.setEndPage(endPage); // 현재 페이지 기준(18)으로 시작페이지(11) 끝페이지(20)
    pageInfo.setListCount(listCount);
    pageInfo.setMaxPage(maxPage);
    pageInfo.setPage(page);
    pageInfo.setStartPage(startPage);
    int startrow = (page - 1) * 10 + 1;

    return boardDAO.selectBoardList(startrow);
  }

  @Override
  public Board getBoard(int board_num) throws Exception {
    boardDAO.updateReadCount(board_num); // 조회수 증가
    return boardDAO.selectBoard(board_num);
  }

  @Override
  public void regReply(Board board) throws Exception {
    boardDAO.updateBoardReSeq(board);
    int boardNum = boardDAO.selectMaxBoardNum() + 1;
    board.setBOARD_NUM(boardNum);
    board.setBOARD_RE_LEV(board.getBOARD_RE_LEV() + 1);
    board.setBOARD_RE_SEQ(board.getBOARD_RE_SEQ() + 1);
    boardDAO.insertBoard(board);

  }

  // String selectPassword(int board_num) throws Exception;
  // void updateBoard(Board board) throws Exception;
  @Override
  public void modifyBoard(Board board) throws Exception {
    String pass = boardDAO.selectPassword(board.getBOARD_NUM());
    if (!pass.equals(board.getBOARD_PASS()))
      throw new Exception("비밀번호 틀림. 수정권한 없음");
    boardDAO.updateBoard(board);
  }

  @Override
  public void removeBoard(int board_num, String password) throws Exception {
    String pass = boardDAO.selectPassword(board_num);
    if (!pass.equals(password))
      throw new Exception("삭제 권한 없음");
    boardDAO.deleteBoard(board_num);
  }
}
