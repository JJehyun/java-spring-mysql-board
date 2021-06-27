package com.spring.mysql;

import java.util.List;

public interface DAO {
    public List<MemberVO> selectMember() throws Exception;

}
