package com.spring.designinsert;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
@Repository
public class DesignDetailtopDAO {
	
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";

    public List<DesignDetailtopVO> designdetailtop() throws Exception {
 
        return sqlSession.selectList(Namespace+".designdetailtop");
    }
}
