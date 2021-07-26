package com.mulcam.lec.service;

import com.mulcam.lec.vo.Member;

public interface MemberService {
  void join(Member member) throws Exception;

  void login(String id, String password) throws Exception;
}
