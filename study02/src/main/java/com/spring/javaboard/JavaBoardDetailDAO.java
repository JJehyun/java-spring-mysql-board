package com.spring.javaboard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;




@Repository
public class JavaBoardDetailDAO {

    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";
	
    
    public List<JavaBoardDetailVO> javaDetailmain(int a) throws Exception {
    	Map<String, Object> param = new HashMap<>(); 
    	param.put("asd", a);
    	return sqlSession.selectList(Namespace+".javadetailmain", param);
    }
	
	
}
