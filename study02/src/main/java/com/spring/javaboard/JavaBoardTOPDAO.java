package com.spring.javaboard;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;




@Repository
public class JavaBoardTOPDAO {

	
	
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";

    public List<JavaBoardTOPVO> JAVAdetailtop() throws Exception {
 
        return sqlSession.selectList(Namespace+".Javadetailtop");
    }
}
