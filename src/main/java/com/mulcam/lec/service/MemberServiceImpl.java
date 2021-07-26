package com.mulcam.lec.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mulcam.lec.dao.MemberDAO;
import com.mulcam.lec.vo.Member;

@Service
public class MemberServiceImpl implements MemberService {
  @Autowired
  MemberDAO memberDAO;

  @Override
  public void join(Member member) throws Exception {
    int cnt = memberDAO.insertMember(member);
    if (cnt == 0)
      throw new Exception("회원가입 실패");
  }

  @Override
  public void login(String id, String password) throws Exception {
    Member member = memberDAO.selectMember(new Member(id, password));
    if (member == null)
      throw new Exception("로그인 실패");
  }
}
