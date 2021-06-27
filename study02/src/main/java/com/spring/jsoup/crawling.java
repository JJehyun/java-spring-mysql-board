package com.spring.jsoup;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.stereotype.Repository;


@Repository
public class crawling {
	public ArrayList<String>  movietext = new ArrayList<String> ();
	public ArrayList<String>  moiveimg = new ArrayList<String> ();
	public void craw() {
		// Jsoup�� �̿��ؼ� �������� ũ�Ѹ�
		String url = "http://www.cgv.co.kr/movies/";
		Document doc = null;        
		
		 
		 try {
		 
		 doc = Jsoup.connect(url).get();	//Document���� �������� ��ü �ҽ��� ����ȴ�
		 for (Element e : doc.select("#contents > div.wrap-movie-chart > div.sect-movie-chart > ol > li > div.box-contents > a > strong")){
			 String strtwo = e.text();
			 movietext.add(strtwo);
			 
		 }
		
		 
		 
		 for (Element e : doc.select("#contents > div.wrap-movie-chart > div.sect-movie-chart > ol > li > div.box-image > a > span > img")){
			 String strtwo = e.attr("src");
			 moiveimg.add(strtwo);
		 }
		 
		 System.out.println("ũ�Ѹ� ����");
		 System.out.println("ũ�Ѹ� ����");
		 } 
		 catch (IOException e) {
		 
		 e.printStackTrace();
		 
		 }


	}

}