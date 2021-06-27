package com.spring.javaboard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;





@Repository
public class JavaBoardSearchDAO {

    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";

    public List<JavaBoardVO> JavaBoardMain(String textl,int a, int b) throws Exception {
    	Map<String, Object> param = new HashMap<>(); 
    	param.put("text", textl);
    	param.put("first", a);
    	param.put("two", b);

        return sqlSession.selectList(Namespace+".JavaBoardSearchDAO",param);
    }
	
	
}
