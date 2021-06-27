package com.spring.jsoup;

import java.io.IOException;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.stereotype.Repository;




@Repository
public class WeatherCraw {
	
	
public ArrayList<String>  musicchartg = new ArrayList<String> ();
public ArrayList<String>  musicone = new ArrayList<String> ();	
public ArrayList<String>  musictwo = new ArrayList<String> ();	
	public void craw() {
		// Jsoup�� �̿��ؼ� �������� ũ�Ѹ�
		String url = "https://freemeteo.kr/weather/seoul/hourly-forecast/tomorrow/?gid=1835848&language=korean&country=south-korea";
		Document doc = null;        

		 
		 try {
		 
		 doc = Jsoup.connect(url).get();	//Document���� �������� ��ü �ҽ��� ����ȴ�
		 for (Element e : doc.select("#content > div.right-col > div.weather-now > div.today.table > div > table > tbody > tr > td > b")){
			 String moiveimgtext = e.text();
			 musicchartg.add(moiveimgtext);
		 }
		 
		 
		 for (Element se : doc.select("#content > div.right-col > div.weather-now > div.today.table > div > table > thead > tr > th")){
			 String strtwos = se.text();
			 musicone.add(strtwos);
		 }
		 
		 for (Element ser : doc.select("#content > div.right-col > div.weather-now > div.today.table > div > table > tbody > tr:nth-child(6) > td")){
			 String strtwoss = ser.text();
			 musictwo.add(strtwoss);
		 }
		 
		 
		 
		 } 
		 catch (IOException e) {
		 
		 e.printStackTrace();
		 
		 }


	}
	
	
	
	
	
}
