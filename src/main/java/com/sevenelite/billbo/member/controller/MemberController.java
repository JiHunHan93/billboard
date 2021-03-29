package com.sevenelite.billbo.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.sevenelite.billbo.member.model.dto.MemDTO;
import com.sevenelite.billbo.member.model.service.MemService;

@Controller
//@RequestMapping()
public class MemberController {
	
	private final MemService memSer;
	
	@Autowired
	public MemberController(MemService memSer) {
		this.memSer = memSer;
	}
	
	@GetMapping("member/memlist")
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

	@GetMapping("member/login")
	public String loginPage() {
		
		return "member/login";
	}
	
	@PostMapping("member/login")
	public String login() {
		
		return "";
	}
	
	@GetMapping("member/regist")
	public String registPage() {
		
		return "member/regist";
	}
	
	@PostMapping("member/regist")
	public String regist() {
		
		return "";
	}
	
}
