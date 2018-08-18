package com.bdi.erp.common;

import java.sql.SQLException;

@SuppressWarnings("unused")
public class result {

	private static String result = "";

	public static String resulta(String a) {
		result = a;
		String tBirth = "";
		for(int i =0; i<result.length(); i++){
			if(result.charAt(i)!='-'){
				tBirth = tBirth + result.substring(i, i+1);	
			}
		}
		return tBirth;
	}
	
	public static void main(String[] args) {
		
	}
}
