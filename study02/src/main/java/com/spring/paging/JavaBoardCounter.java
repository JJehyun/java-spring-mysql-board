package com.spring.paging;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class JavaBoardCounter {

    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";
   
    public int javaboardcounter() throws Exception {
    	int iid = sqlSession.selectOne(Namespace+".JavaBoardCounter");
    	return iid;
    }
	
	
}
