package com.exam.util;

import java.sql.Timestamp;

import org.springframework.stereotype.Component;

public class TimeUtil {
	
	public static String getRelativeTime(Timestamp createdAt) {
		
		long now = System.currentTimeMillis();
		long diff = now - createdAt.getTime(); // 현재시간 - 만든시간 (ms)
		
		long seconds = diff/1000; // 1000ms -> 1s
		if(seconds < 60) {
			return seconds +"초 전";
		}
		long minutes = seconds/60;
		if(minutes < 60) {
			return minutes +"분 전";
		}
		long hours = minutes/60;
		if(hours < 24) {
			return hours +"시간 전";
		}
		long days = hours/24;
			return days +"일 전";

	} 
}
