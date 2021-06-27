package com.spring.javaboard;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;




@Repository
public class JavaBoardMemoSelect {

	
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";

    public List<JavaBoardMemoVO> javamemoselect() throws Exception {
 
        return sqlSession.selectList(Namespace+".javamemoselect");
    }
}
