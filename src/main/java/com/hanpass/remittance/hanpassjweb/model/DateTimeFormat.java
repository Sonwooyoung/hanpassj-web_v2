package com.hanpass.remittance.hanpassjweb.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


public class DateTimeFormat {

	private List<Map> dayList;

	private HashMap<String,String> daylists;

	public List<Map> getDayList() {
		return dayList;
	}

	public void setDayList(List<Map> dayList) {
		this.dayList = dayList;
	}

	public HashMap<String, String> getDaylists() {
		return daylists;
	}

	public void setDaylists(HashMap<String, String> daylists) {
		this.daylists = daylists;
	}

}
