package com.spring.designinsert;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class JoinDetailDAO {

	
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";

    public List<JoinDetailVO> JoinDetailuserpro(int a) throws Exception {
 
        return sqlSession.selectList(Namespace+".joindesigndetail",a);
    }
}
