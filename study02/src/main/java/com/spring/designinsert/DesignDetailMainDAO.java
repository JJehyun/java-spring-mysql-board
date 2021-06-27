package com.spring.designinsert;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class DesignDetailMainDAO {

	
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";

    public List<DesignDetailMainVO> DesignDetailMain(int a) throws Exception {
 
        return sqlSession.selectList(Namespace+".DesignDetailMain",a);
    }
}
