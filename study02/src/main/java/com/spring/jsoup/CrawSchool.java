package com.spring.jsoup;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.stereotype.Repository;



@Repository
public class CrawSchool {
	public ArrayList<String>  musicchartg = new ArrayList<String> ();
	
	public void craw() {
		// Jsoup를 이용해서 뮤직비디오 크롤링
		String url = "https://www.syu.ac.kr/academic/major-schedule/";
		Document doc = null;        

		 
		 try {
		 
		 doc = Jsoup.connect(url).get();	//Document에는 페이지의 전체 소스가 저장된다
		 for (Element e : doc.select("#post-121 > div > div.md_gray_textcalendar.mb60 > dl > dd > div > ul > li > dl")){
			 String moiveimgtext = e.text();
			 musicchartg.add(moiveimgtext);
		 }
		 } 
		 catch (IOException e) {
		 
		 e.printStackTrace();
		 
		 }


	}
	
	
	
	
}
