package com.spring.javaboard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class JavaBoardMemoDAO {

    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";
	
    
    public void javaMemoinsert(String a,String b) throws Exception {
    	Map<String, Object> param = new HashMap<>(); 
    	param.put("contents", a);
    	param.put("userID", b);
    	sqlSession.selectList(Namespace+".JAVAMEMOinsert", param);
    }
}
