package com.spring.main;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.javaboard.JavaBoardTOPVO;




@Repository
public class MainJavaDAO {

	
	
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";

    public List<MainJavaVO> JAVAmainselect() throws Exception {
 
        return sqlSession.selectList(Namespace+".mainjavaSELECTA");
    }
	
	
}
