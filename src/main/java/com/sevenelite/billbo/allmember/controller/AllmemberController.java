package com.sevenelite.billbo.allmember.controller;

import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sevenelite.billbo.allmember.model.dto.CertificateListDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndArmyDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndCareerDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndFamilyDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndFinalDTO;
import com.sevenelite.billbo.allmember.model.dto.MemberAndMemberInfoAndDeptAndModifyDeptDTO;
import com.sevenelite.billbo.allmember.model.service.AllMemberService;
import com.sevenelite.billbo.profile.model.dto.MemberInfoDTO;

@Controller
@RequestMapping("/*")
public class AllmemberController {

	private final AllMemberService allMemberService;
	
	
	@Autowired
	public AllmemberController(AllMemberService allMemberService) {
		this.allMemberService = allMemberService;
		
	}
	
	@GetMapping("/selectList")
	public String selectAllEmployeeList(Model model) {
		
		List<MemberAndMemberInfoAndDeptAndModifyDeptDTO> allMemberList = allMemberService.selectAllEmployeeList();
		
		for(MemberAndMemberInfoAndDeptAndModifyDeptDTO allMember : allMemberList) {
			System.out.println("allMember : " + allMember);
		}
		
		model.addAttribute("allMemberList", allMemberList);
		
		return "allmember/allmember";
	}

	
	  @GetMapping("/detail") 
	  public ModelAndView detailMemberList(HttpServletRequest request, HttpServletResponse response , Model model) {
		  
		  ModelAndView mv = new ModelAndView();
		  int no = Integer.parseInt(request.getParameter("no"));
		  
		  //신상정보 기본
		  System.out.println("no : " + no);
		  mv.addObject("no",no);
		  System.out.println("no : " + no);
		  mv.setViewName("allmember/detail");
		  List<MemberAndMemberInfoAndDeptAndModifyDeptDTO> memberDetail = allMemberService.memberDetail(no);
		  model.addAttribute("memberDetail", memberDetail);
		  
		  //은행정보
		  List<MemberInfoDTO> bankInfo = allMemberService.selectBankInfo(no);
		  model.addAttribute("bankInfo", bankInfo);
		  System.out.println(bankInfo);
		 
		  //병역정보
		  List<MemberAndArmyDTO> armyInfo = allMemberService.selectArmyInfo(no);
		  model.addAttribute("armyInfo", armyInfo);
		  System.out.println(armyInfo);
		  
		  //가족정보
		  List<MemberAndFamilyDTO> familyInfo = allMemberService.selectFamilyInfo(no);
		  model.addAttribute("familyInfo", familyInfo);
		  System.out.println(familyInfo);
		  
		  //자격증 정보
		  List<CertificateListDTO> certificateInfo = allMemberService.selectCertiInfo(no);
		  model.addAttribute("certificateInfo", certificateInfo);
		  System.out.println(certificateInfo);
		  
		  //최종학력정보
		  List<MemberAndFinalDTO> studyInfo = allMemberService.selectStudyInfo(no);
		  model.addAttribute("studyInfo", studyInfo);
		  System.out.println(studyInfo);
		  
		  //경력정보
		  List<MemberAndCareerDTO> carrerInfo = allMemberService.selectCarrerInfo(no);
		  model.addAttribute("carrerInfo", carrerInfo);
		  System.out.println(carrerInfo);
		  
		  return mv;
		  
	  }
	  
	  @PostMapping("upload")
	  public String fileUpload(@RequestParam MultipartFile FileAttachment, HttpServletRequest request, Model model){
		  
		  String fileUpload = request.getParameter("FileAttachment");
		  System.out.println("fileUpload : " + fileUpload);
		  
		  
		  /*파일 저장할 경로 설정*/
		  
		  /*tomcat에서 찾은 경로는 resource다 여기까지가 절대경로*/
		  String root = request.getSession().getServletContext().getRealPath("resources");
		  System.out.println("root : "  + root);
		  
		  String filePath = root + "\\uploadFiles";
		  
		  /*파일이 존재하지 않으므로 파일을 만들어주자*/
		  File mkdir = new File(filePath);
		  if(!mkdir.exists()) {
			  mkdir.mkdirs();
		  }
		  
		  /*파일이름 변경처리*/
		  String originFileName = FileAttachment.getOriginalFilename();
		  System.out.println("originFileName :  " + originFileName);
		  
		  /*파일 이름을 바꿀 떄는 먼저 파일 확장자를 분리하고 랜덤이름이랑 붙여준다*/
		  
		  /*파일확장자 분리*/
		  String ext = originFileName.substring(originFileName.lastIndexOf("."));
		  String savedName = UUID.randomUUID().toString().replace("-", "") + ext;
		  
		  System.out.println("savedName : " + savedName);
		  
		  String ThumbnailPath = root + "_" + savedName;
		  System.out.println(ThumbnailPath);
		  
		  /*파일을 저장한다*/
		  try {
		  FileAttachment.transferTo(new File(filePath + "\\" + savedName));
		  model.addAttribute("message", "파일 업로드 성공");
		  
		  } catch(Exception e) {
			  e.printStackTrace();
			  /*실패시 파일 삭제*/
			  new File(filePath + "\\" + savedName).delete();
			  model.addAttribute("message", "파일 업로드 삭제");
		  }
		  
		  
		 
		  
		  return "allmember/detail";
	  }
	 
}
