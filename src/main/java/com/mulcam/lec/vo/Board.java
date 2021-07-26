package com.mulcam.lec.vo;

import java.sql.Date;
import org.springframework.stereotype.Component;
import org.springframework.web.multipart.MultipartFile;

@Component("board")
public class Board { // db 컬럼명과 동일!, 컬럼보다 수 많은 건 괜찮음
  private int BOARD_NUM;
  private String BOARD_NAME;
  private String BOARD_PASS;
  private String BOARD_SUBJECT;
  private String BOARD_CONTENT;
  private String BOARD_FILE;
  private int BOARD_RE_REF; // int는 초기 null값이므로 시스템 죽음, service에 뭐라도 넣어줘야
  private int BOARD_RE_LEV;
  private int BOARD_RE_SEQ;
  private int BOARD_READCOUNT;
  private Date BOARD_DATE;

  private MultipartFile upfile;

  // board_re_ref = 부모의 보드 넘버
  // board_re_lev 부모 레벨 +1
  // board_re_seq 자식 댓글순서. 본인댓글이 0 (앞선댓글은 모두 +1)
  // select row_number 전체 순번 매기기


  public MultipartFile getUpfile() {
    return upfile;
  }

  public void setUpfile(MultipartFile upfile) {
    this.upfile = upfile;
  }

  public int getBOARD_NUM() {
    return BOARD_NUM;
  }

  public void setBOARD_NUM(int bOARD_NUM) {
    BOARD_NUM = bOARD_NUM;
  }

  public String getBOARD_NAME() {
    return BOARD_NAME;
  }

  public void setBOARD_NAME(String bOARD_NAME) {
    BOARD_NAME = bOARD_NAME;
  }

  public String getBOARD_PASS() {
    return BOARD_PASS;
  }

  public void setBOARD_PASS(String bOARD_PASS) {
    BOARD_PASS = bOARD_PASS;
  }

  public String getBOARD_SUBJECT() {
    return BOARD_SUBJECT;
  }

  public void setBOARD_SUBJECT(String bOARD_SUBJECT) {
    BOARD_SUBJECT = bOARD_SUBJECT;
  }

  public String getBOARD_CONTENT() {
    return BOARD_CONTENT;
  }

  public void setBOARD_CONTENT(String bOARD_CONTENT) {
    BOARD_CONTENT = bOARD_CONTENT;
  }

  public String getBOARD_FILE() {
    return BOARD_FILE;
  }

  public void setBOARD_FILE(String bOARD_FILE) {
    BOARD_FILE = bOARD_FILE;
  }

  public int getBOARD_RE_REF() {
    return BOARD_RE_REF;
  }

  public void setBOARD_RE_REF(int bOARD_RE_REF) {
    BOARD_RE_REF = bOARD_RE_REF;
  }

  public int getBOARD_RE_LEV() {
    return BOARD_RE_LEV;
  }

  public void setBOARD_RE_LEV(int bOARD_RE_LEV) {
    BOARD_RE_LEV = bOARD_RE_LEV;
  }

  public int getBOARD_RE_SEQ() {
    return BOARD_RE_SEQ;
  }

  public void setBOARD_RE_SEQ(int bOARD_RE_SEQ) {
    BOARD_RE_SEQ = bOARD_RE_SEQ;
  }

  public int getBOARD_READCOUNT() {
    return BOARD_READCOUNT;
  }

  public void setBOARD_READCOUNT(int bOARD_READCOUNT) {
    BOARD_READCOUNT = bOARD_READCOUNT;
  }

  public Date getBOARD_DATE() {
    return BOARD_DATE;
  }

  public void setBOARD_DATE(Date bOARD_DATE) {
    BOARD_DATE = bOARD_DATE;
  }



}
