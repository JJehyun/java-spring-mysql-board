package com.spring.javaboard;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.spring.designinsert.DesignDetailMainVO;



@Repository
public class JavaBoardDAO {
    @Inject
    private SqlSession sqlSession;
    private static final String Namespace = "com.example.mapper.memberMapper";

    public List<JavaBoardVO> JavaBoardMain(int a, int b) throws Exception {
    	Map<String, Object> param = new HashMap<>(); 
    	param.put("first", a);
    	param.put("two", b);

        return sqlSession.selectList(Namespace+".JavaBoardSelect",param);
    }
}
