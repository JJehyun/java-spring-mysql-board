package com.spring.mysqltest;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.mysql.UserVO;

@Repository
public class TestDAO {

    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";

    public List<TestVO> selectmain() throws Exception {
 
        return sqlSession.selectList(Namespace+".selectmain");
    }
	
}
