package com.spring.designinsert;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
@Repository
public class DesignSelectDAO {

    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";

    public List<DesignSelectVO> designSelect(int a) throws Exception {
 
        return sqlSession.selectList(Namespace+".designselect",a);
    }
	
}

