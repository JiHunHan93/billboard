package com.sevenelite.billbo.member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.sevenelite.billbo.member.model.dto.MemBbDTO;
import com.sevenelite.billbo.member.model.dto.MemDTO;
import com.sevenelite.billbo.member.model.service.MemService;
import com.sevenelite.billbo.member.model.service.UserDetailsServiceCustom;

@Controller
@RequestMapping("/member/*")
public class MemberController {
	
	private final MemService memSer;
	private final UserDetailsServiceCustom userSer;
	private final BCryptPasswordEncoder bcrypt;
	
	@Autowired
	public MemberController(MemService memSer, UserDetailsServiceCustom userSer, BCryptPasswordEncoder bcrypt) {
		this.memSer = memSer;
		this.userSer = userSer;
		this.bcrypt = bcrypt;
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
	
	@GetMapping("regist")
	public String registPage() {
		
		return "member/regist";
	}
	
	@PostMapping(value="regist/checkEmail", produces="application/json; charset=UTF-8")
	@ResponseBody
	public String registCheckEmail(@RequestParam(required=false) String email) {

		Gson gson = new GsonBuilder().create();
		
		System.out.println("받아온 이메일 : " + email);
		
		String result = "";
		if(memSer.registCheckEmail(email).equals("false")) {
			
			result = "can";
			result.equals("");
			
		}
		
		return gson.toJson(result);

	}
	
	@PostMapping("regist")
	public String regist(@ModelAttribute MemBbDTO mem, RedirectAttributes redirect) {
		
		System.out.println("넘어온 form 내용은?" + mem);
		
		mem.setPwd(bcrypt.encode(mem.getPwd()));
		
		System.out.println("인코딩한 비밀번호 : " + mem.getPwd());
		
		if(!memSer.registNewMem(mem)) {
			
			redirect.addFlashAttribute("message", "죄송합니다. 내부오류가 발생했습니다.");
			
		}
		
		redirect.addFlashAttribute("message", "회원 가입에 성공하셨습니다.");
		
		return "redirect:/member/login";
	}
	
	@PostMapping("login22")
	public String login22() {
		
		String name = "2022.10.30";
		
		return "member/login22";
	}
	
}
