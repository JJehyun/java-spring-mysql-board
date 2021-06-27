package com.spring.designinsert;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class MainDesignDAO {
	
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";

    public List<MainDesignVO> MainDesignSelect() throws Exception {
 
        return sqlSession.selectList(Namespace+".MainDesignSelect");
    }
	
}
