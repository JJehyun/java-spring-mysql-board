package com.spring.jsoup;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.stereotype.Repository;


@Repository
public class crawlingmovie {
	public ArrayList<String>  moiveimg = new ArrayList<String> ();
	public void craw() {
		// Jsoup를 이용해서 뮤직비디오 크롤링
		String url = "https://www.kobis.or.kr/kobis/mobile/main/findDailyBoxOfficeList.do";
		Document doc = null;        

		 
		 try {
		 
		 doc = Jsoup.connect(url).get();	//Document에는 페이지의 전체 소스가 저장된다
		 for (Element e : doc.select("#contents > div.wrap_list > ul > li > a > div > strong")){
			 String moiveimgtext = e.text();
			 moiveimg.add(moiveimgtext);
			 
		 }
		 } 
		 catch (IOException e) {
		 
		 e.printStackTrace();
		 
		 }


	}

}