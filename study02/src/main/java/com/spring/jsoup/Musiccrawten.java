package com.spring.jsoup;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.stereotype.Repository;


@Repository
public class Musiccrawten {

	public ArrayList<String>  musicchartgten = new ArrayList<String> ();
	public void craw() {
		// Jsoup를 이용해서 뮤직비디오 크롤링
		String url = "https://search.naver.com/search.naver?where=nexearch&sm=mtb_clk.muc&query=VIBE%20%EC%B0%A8%ED%8A%B8";
		Document doc = null;        

		 
		 try {
		 
		 doc = Jsoup.connect(url).get();	//Document에는 페이지의 전체 소스가 저장된다
		 for (Element e : doc.select("#main_pack > section.sc_new.sp_pmusic._au_music_collection._prs_mus_sen > div > div.group_music.type_chart > ol > li > div > div.album_info > div > span > a")){
			 String moiveimgtext = e.text();
			 musicchartgten.add(moiveimgtext);
		 }
		 } 
		 catch (IOException e) {
		 
		 e.printStackTrace();
		 
		 }


	}
	
	
}
