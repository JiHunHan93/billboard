package com.sevenelite.billbo.approval.controller;

import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;

@Controller
@RequestMapping("/approval/document/*")
public class ApprovaldocumentController {
	
	/* 휴가신청서 */
	@GetMapping("1004")
	public String vacation() {
		
		return "approval/document/1004";
	}
	
	@PostMapping(value="1004", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String vacationInsert(HttpServletRequest request) {
		
		Gson gson = new GsonBuilder().create();
		
		/* 0. Ajax로 전송받은 key, value 확인 */
	      Map<String,String[]> paymentInfo = new TreeMap<String,String[]>(request.getParameterMap());
	      
	      for(String key : paymentInfo.keySet()) {
	         String[] value = paymentInfo.get(key);

	         for(int i=0; i<value.length; i++) {
	            System.out.println((key + " : " + value[i]));
	         }
	      }
		
	      int a = Integer.parseInt(((String[])paymentInfo.get("jihun[7][value]"))[0]);
	      System.out.println("가져온 값 a : " + a);
	      System.out.println(((String[])paymentInfo.get("jihun[0][value]"))[0]);
	      System.out.println(((String[])paymentInfo.get("jihun[10][value]"))[0]);
	      
	      /* 04/10(토) , 일요일*/
		
		return gson.toJson("AJA통신 완료");
	}
	
}
