package com.spring.mysql;


import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class UserDAO{

    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";

    public List<UserVO> selectMember() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectUser");
    }
}
