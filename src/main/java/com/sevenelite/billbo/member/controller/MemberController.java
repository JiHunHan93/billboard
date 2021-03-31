package com.sevenelite.billbo.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.MemDTO;
import com.sevenelite.billbo.member.model.service.MemService;
import com.sevenelite.billbo.member.model.service.UserDetailsServiceCustom;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	private final MemService memSer;
	private final UserDetailsServiceCustom userSer;
	
	@Autowired
	public MemberController(MemService memSer, UserDetailsServiceCustom userSer) {
		this.memSer = memSer;
		this.userSer = userSer;
	}
	
	@GetMapping("memlist")
	public String selectMember(Model model) {
		
		List<MemDTO> memberInfo = memSer.selectMemList();
		
		for(MemDTO mem : memberInfo) {
			System.out.println(mem);
		}
		
		System.out.println("memberInfo 출력 후 가자");
		
		model.addAttribute("mgList", memberInfo);
		
		return "manage/main";
	}
	
//	@GetMapping(value="member/memlist", produces="application/json; charset=UTF-8")
//	@ResponseBody
//	public String memberListSelect() {
//		
//		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd hh:mm:ss:SSS")
//					.setPrettyPrinting()
//					.setFieldNamingPolicy(FieldNamingPolicy.IDENTITY)
//					.serializeNulls()
//					.disableHtmlEscaping()
//					.create();
//		
//		System.out.println("이상무");
//		
//		return "";
//	}

	@GetMapping("login")
	public String loginPage() {
		
		return "member/login";
	}
	
//	@PostMapping("login")
//	public String login(@ModelAttribute MemBbDTO mem, Model model) {
//		
//		/* 01. 기존 DB만 갔다온 로그인 방법 */
////		model.addAttribute("loginBbMem", memSer.loginBbMem(mem));
//		
//		/* 02. 스프링 시큐리티 적용 로그인 */
//		System.out.println("입구컷인가?");
//		model.addAttribute("loginBbMem", userSer.loadUserByUsername(mem.getEmail())); 
//		
//		return "mainpage/main";
//	}
	
	@GetMapping("regist")
	public String registPage() {
		
		return "member/regist";
	}
	
	@PostMapping("regist")
	public String regist() {
		
		return "";
	}
	
	@PostMapping("login22")
	public String login22() {
		
		return "member/login22";
	}
	
}
