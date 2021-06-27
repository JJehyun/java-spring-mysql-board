package com.spring.javaboard;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class JavaBoardMemodeleteDAO {

    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";
	
    
    public void javaMemodelete(int a) throws Exception {
    	Map<String, Object> param = new HashMap<>(); 
    	param.put("id", a);
    	sqlSession.selectList(Namespace+".deletejavaMemo", param);
    }
	
}
