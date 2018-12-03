package com.hanpass.remittance.hanpassjweb.utils;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.*;

/**
 * Created by sonwooyoung on 2018-11-12.
 */
public class DateUtil {

	public List<Map> daylists(){
		List<Map> dayList = new ArrayList<Map>();
		LocalDateTime now = LocalDateTime.now(); // 현재시간
		now.getDayOfMonth();
		for(int i=0; i < 9; i++){
			HashMap<String,String> daylists = new HashMap<>();
			LocalDateTime plusDay = now.plusDays(2+i);
			daylists.put("day", plusDay.format(DateTimeFormatter.ofPattern("yyyy / MM / dd")));
			daylists.put("dayoftheweek",plusDay.format(DateTimeFormatter.ofPattern("E").withLocale(new Locale("ko"))));
			dayList.add(daylists);
		}
		return dayList;
	}

	public List<Map> timeLists(){
		List<Map> timeList = new ArrayList<Map>();
		for(int i=6; i <23; i++){
			for(int j=0; j < 3; j++){
				HashMap<String,String> timeLists = new HashMap<>();
				if(i < 10) {
					if(j == 0){
						timeLists.put("time", "0"+i+":00 - 0"+i+":20");
					}else if(j == 1){
						timeLists.put("time", "0"+i+":20 - 0"+i+":40");
					}else if(j == 2){
						if(i == 9){
							timeLists.put("time", "0"+i+":40 - "+(i+1)+":00");
						}else{
							timeLists.put("time", "0"+i+":40 - 0"+(i+1)+":00");
						}
					}
					timeList.add(timeLists);
				}else{
					if(j == 0){
						timeLists.put("time", i+":00 - "+i+":20");
					}else if(j == 1){
						timeLists.put("time", i+":20 - "+i+":40");
					}else if(j == 2){
						timeLists.put("time", i+":40 - "+(i+1)+":00");
					}
					timeList.add(timeLists);
				}
			}
		}
		return timeList;
	}
}
