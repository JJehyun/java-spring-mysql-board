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
		// Jsoup�� �̿��ؼ� �������� ũ�Ѹ�
		String url = "https://www.kobis.or.kr/kobis/mobile/main/findDailyBoxOfficeList.do";
		Document doc = null;        

		 
		 try {
		 
		 doc = Jsoup.connect(url).get();	//Document���� �������� ��ü �ҽ��� ����ȴ�
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