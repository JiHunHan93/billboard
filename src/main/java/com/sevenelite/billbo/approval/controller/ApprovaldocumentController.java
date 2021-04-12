package com.sevenelite.billbo.approval.controller;

import java.util.Map;
import java.util.TreeMap;

import javax.servlet.http.HttpServletRequest;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.sevenelite.billbo.member.model.dto.UserDetailsVO;

@Controller
@RequestMapping("/approval/document/*")
public class ApprovaldocumentController {
	
	/* 휴가신청서 */
	@GetMapping("1004")
	public String vacation() {
		
		return "approval/document/1004";
	}
	
	
	/* 휴가신청서 */
	@GetMapping("1008")
//	public String testMap(@AuthenticationPrincipal UserDetailsVO userDetailsVO) {
	public String testMap(Authentication authentication) {
		UserDetailsVO userDetails = (UserDetailsVO) authentication;
		System.out.println(userDetails.getUsername());
		System.out.println(userDetails.getMembername());
		System.out.println(userDetails.getMemberno());
//		System.out.println("1. username : " + userDetailsVO.getUsername());
//		System.out.println("2. password : " + userDetailsVO.getPassword());
//		System.out.println("3. membername : " + userDetailsVO.getMembername());
//		System.out.println("4. memberno : " + userDetailsVO.getMemberno());
		
		return "approval/document/1004";
	}
	
	/* 휴가신청서 */
//	@GetMapping("1008")
//	public String testMap(@AuthenticationPrincipal User userDetails) {
//		System.out.println(userDetails);
//		System.out.println(userDetails.getUsername());
////		System.out.println("1. username : " + userDetailsVO.getUsername());
////		System.out.println("2. password : " + userDetailsVO.getPassword());
////		System.out.println("3. membername : " + userDetailsVO.getMembername());
////		System.out.println("4. memberno : " + userDetailsVO.getMemberno());
//		
//		return "approval/document/1004";
//	}
	
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
	      
	      /* 04/10(토) , 일요일, 월요일 */
		
		return gson.toJson("AJA통신 완료");
	}
	
}
