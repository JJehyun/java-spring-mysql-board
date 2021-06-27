package com.spring.designinsert;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
@Repository
public class DesigninsertDAO {
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";
	
    
    public void designinsert(String a,String b,String c,String d) throws Exception {
    	Map<String, Object> param = new HashMap<>(); 
    	param.put("title", a); 
    	param.put("contents", b);
    	param.put("userID", c);
    	param.put("file", d);
    	sqlSession.selectList(Namespace+".designinsert", param);
    }
}
