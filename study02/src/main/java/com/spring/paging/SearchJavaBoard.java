package com.spring.paging;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class SearchJavaBoard {

	
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";
   
    public int counterjavasearch(String test) throws Exception {
    	int iid = sqlSession.selectOne(Namespace+".JavaBoardsearch", test);
    	return iid;
    }
	
}
