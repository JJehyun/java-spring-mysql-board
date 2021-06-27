package com.spring.designinsert;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;



@Repository
public class SearchTextDAO {

	
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";

    public List<SearchTextVO> searchtext(String a,int b) throws Exception {
    	Map<String, Object> param = new HashMap<>(); 
    	param.put("b", a); 
    	param.put("pagingint", b);
    	
        return sqlSession.selectList(Namespace+".Searchtext",param);
    }
}
