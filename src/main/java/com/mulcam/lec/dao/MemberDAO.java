package com.mulcam.lec.dao;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import com.mulcam.lec.vo.Member;

@Mapper
@Repository("memberDAO")
public interface MemberDAO {
  int insertMember(Member member) throws Exception;

  Member selectMember(Member member) throws Exception;
}
