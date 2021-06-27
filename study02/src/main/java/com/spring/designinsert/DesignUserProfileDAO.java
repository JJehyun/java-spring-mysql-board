package com.spring.designinsert;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class DesignUserProfileDAO {

	
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";

    public List<DesignUserProfile> designUserfileSelect(String a) throws Exception {
 
        return sqlSession.selectList(Namespace+".designuserprofile",a);
    }
	
}
