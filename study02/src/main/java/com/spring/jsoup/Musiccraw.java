package com.spring.jsoup;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.stereotype.Repository;

@Repository
public class Musiccraw {

	public ArrayList<String>  musicchartg = new ArrayList<String> ();
	public void craw() {
		// Jsoup�� �̿��ؼ� �������� ũ�Ѹ�
		String url = "https://search.naver.com/search.naver?where=nexearch&sm=mtb_clk.muc&query=VIBE%20%EA%B5%AD%EB%82%B4%20%EA%B8%89%EC%83%81%EC%8A%B9%20%EC%B0%A8%ED%8A%B8";
		Document doc = null;        

		 
		 try {
		 
		 doc = Jsoup.connect(url).get();	//Document���� �������� ��ü �ҽ��� ����ȴ�
		 for (Element e : doc.select("#main_pack > section.sc_new.sp_pmusic._au_music_collection._prs_mus_sen > div > div.group_music.type_chart > ol > li > div > div.album_info > div > span > a")){
			 String moiveimgtext = e.text();
			 musicchartg.add(moiveimgtext);
		 }
		 } 
		 catch (IOException e) {
		 
		 e.printStackTrace();
		 
		 }


	}
	
	
}
