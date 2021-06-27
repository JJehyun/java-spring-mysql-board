package com.spring.login;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class LoginpwDAO {
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";
    
    
    public String checkpw(String userpw) throws Exception {
    	String pww = sqlSession.selectOne(Namespace+".checkpw",userpw);
    	return pww;
    }
}
