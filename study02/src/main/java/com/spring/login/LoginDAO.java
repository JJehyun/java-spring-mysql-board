package com.spring.login;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class LoginDAO {

    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";
   
    public String loginid(String user) throws Exception {
    	String iid = sqlSession.selectOne(Namespace+".selectLogin",user);
    	return iid;
    }
}
