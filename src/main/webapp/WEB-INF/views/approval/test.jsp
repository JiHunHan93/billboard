<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/billbo/resources/hrtemp/css/bootstrap.min.css">
<title>Insert title here</title>
<!-- 최신모델 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script> -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- 모달 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
</head>
<body>
	<h1>일단 여기도착</h1>
	<hr>
	
			<!-- 04/08(목) 결재 양식 선택 Moda -->
			<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
			  Launch demo modal
			</button>
			
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-dialog-scrollable" role="document">
			    <div class="modal-content">
			      <div class="modal-header">
			        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
			        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
			          <span aria-hidden="true">&times;</span>
			        </button>
			      </div>
			      
			      <!-- 모달 몸통 -->
			      <div class="modal-body">
			      
			      <!-- 문서 양식 목록 -->
			      <div class="set_wrap">
        <div class="set_nav" id="appr_form_searchTree"><form onsubmit="return false;">
        <section class="search">    <div class="search_wrap">        <input id="searchInput" class="search" maxlength="20" type="text" placeholder="양식제목">        <input class="btn_search" type="button" value="" title="" evt-rol="mail-search">    </div>    <div id="detailSearchLayerWrap" style="position:relative;display:none;z-index:60"></div></section></form><div class="content_tab_wrap"><div id="formTree" class="jstree jstree-0 jstree-focused jstree-default"><ul>
        
        <li title="휴가" rel="FOLDER" nodeid="107" id="FOLDER_107" class="jstree-open"><ins class="jstree-icon">&nbsp;</ins><a title="휴가" rel="FOLDER" nodeid="107" id="FOLDER_107" href="#" data-bypass="1" class=""><ins class="jstree-icon">&nbsp;</ins>휴가</a><ul>
        	<li title="휴가신청서" rel="FORM" nodeid="708" id="FORM_708" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="휴가신청서" href="ajax" rel="FORM" nodeid="708" id="FORM_708" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>휴가신청서</a></li>
        	<li title="휴일근무신청서" rel="FORM" nodeid="673" id="FORM_673" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="휴일근무신청서" rel="FORM" nodeid="673" id="FORM_673" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>휴일근무신청서</a></li>
        </ul></li>
        
        <li title="일반" rel="FOLDER" nodeid="21" id="FOLDER_21" class="jstree-open"><ins class="jstree-icon">&nbsp;</ins><a title="일반" rel="FOLDER" nodeid="21" id="FOLDER_21" href="#" data-bypass="1" class=""><ins class="jstree-icon">&nbsp;</ins>일반</a><ul><li title="업무기안" rel="FORM" nodeid="802" id="FORM_802" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="업무기안" rel="FORM" nodeid="802" id="FORM_802" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>업무기안</a></li><li title="업무협조" rel="FORM" nodeid="778" id="FORM_778" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="업무협조" rel="FORM" nodeid="778" id="FORM_778" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>업무협조</a></li><li title="일반품의서" rel="FORM" nodeid="689" id="FORM_689" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="일반품의서" rel="FORM" nodeid="689" id="FORM_689" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>일반품의서</a></li><li title="회계(입금,출금,대체)품의서" rel="FORM" nodeid="688" id="FORM_688" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="회계(입금,출금,대체)품의서" rel="FORM" nodeid="688" id="FORM_688" href="#" data-bypass="1" class=""><ins class="jstree-icon appr_form">&nbsp;</ins>회계(입금,출금,대체)품의서</a></li></ul></li>
        
        <li title="지원" rel="FOLDER" nodeid="23" id="FOLDER_23" class="jstree-open"><ins class="jstree-icon">&nbsp;</ins><a title="지원" rel="FOLDER" nodeid="23" id="FOLDER_23" href="#" data-bypass="1" class=""><ins class="jstree-icon">&nbsp;</ins>지원</a><ul><li title="해외출장신청" rel="FORM" nodeid="30" id="FORM_30" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="해외출장신청" rel="FORM" nodeid="30" id="FORM_30" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>해외출장신청</a></li><li title="경조화신청" rel="FORM" nodeid="24" id="FORM_24" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="경조화신청" rel="FORM" nodeid="24" id="FORM_24" href="#" data-bypass="1" class=""><ins class="jstree-icon appr_form">&nbsp;</ins>경조화신청</a></li><li title="차량사고보고" rel="FORM" nodeid="25" id="FORM_25" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="차량사고보고" rel="FORM" nodeid="25" id="FORM_25" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>차량사고보고</a></li><li title="하도급계약요청서" rel="FORM" nodeid="26" id="FORM_26" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="하도급계약요청서" rel="FORM" nodeid="26" id="FORM_26" href="#" data-bypass="1" class=""><ins class="jstree-icon appr_form">&nbsp;</ins>하도급계약요청서</a></li><li title="증명서신청(개인)" rel="FORM" nodeid="67" id="FORM_67" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="증명서신청(개인)" rel="FORM" nodeid="67" id="FORM_67" href="#" data-bypass="1" class=""><ins class="jstree-icon appr_form">&nbsp;</ins>증명서신청(개인)</a></li><li title="증명서신청(회사)" rel="FORM" nodeid="68" id="FORM_68" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="증명서신청(회사)" rel="FORM" nodeid="68" id="FORM_68" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>증명서신청(회사)</a></li></ul></li>
        
        <li title="지출결의" rel="FOLDER" nodeid="90" id="FOLDER_90" class="jstree-open"><ins class="jstree-icon">&nbsp;</ins><a title="지출결의" rel="FOLDER" nodeid="90" id="FOLDER_90" href="#" data-bypass="1" class=""><ins class="jstree-icon">&nbsp;</ins>지출결의</a><ul><li title="유류대실비청구서" rel="FORM" nodeid="668" id="FORM_668" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="유류대실비청구서" rel="FORM" nodeid="668" id="FORM_668" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>유류대실비청구서</a></li><li title="시내교통비" rel="FORM" nodeid="667" id="FORM_667" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="시내교통비" rel="FORM" nodeid="667" id="FORM_667" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>시내교통비</a></li><li title="지출결의서(통신비 지원)" rel="FORM" nodeid="687" id="FORM_687" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="지출결의서(통신비 지원)" rel="FORM" nodeid="687" id="FORM_687" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>지출결의서(통신비 지원)</a></li><li title="지출결의서(의료비 신청)" rel="FORM" nodeid="601" id="FORM_601" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="지출결의서(의료비 신청)" rel="FORM" nodeid="601" id="FORM_601" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>지출결의서(의료비 신청)</a></li></ul></li>
        
        <li title="인사" rel="FOLDER" nodeid="24" id="FOLDER_24" class="jstree-open"><ins class="jstree-icon">&nbsp;</ins><a title="인사" rel="FOLDER" nodeid="24" id="FOLDER_24" href="#" data-bypass="1" class=""><ins class="jstree-icon">&nbsp;</ins>인사</a><ul><li title="채용요청" rel="FORM" nodeid="62" id="FORM_62" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="채용요청" rel="FORM" nodeid="62" id="FORM_62" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>채용요청</a></li><li title="휴직원" rel="FORM" nodeid="83" id="FORM_83" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="휴직원" rel="FORM" nodeid="83" id="FORM_83" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>휴직원</a></li><li title="복직원" rel="FORM" nodeid="696" id="FORM_696" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="복직원" rel="FORM" nodeid="696" id="FORM_696" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>복직원</a></li><li title="조퇴신청서" rel="FORM" nodeid="703" id="FORM_703" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="조퇴신청서" rel="FORM" nodeid="703" id="FORM_703" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>조퇴신청서</a></li><li title="지각/불참 사유서" rel="FORM" nodeid="694" id="FORM_694" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="지각/불참 사유서" rel="FORM" nodeid="694" id="FORM_694" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>지각/불참 사유서</a></li><li title="자율 출퇴근 신청서" rel="FORM" nodeid="701" id="FORM_701" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="자율 출퇴근 신청서" rel="FORM" nodeid="701" id="FORM_701" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>자율 출퇴근 신청서</a></li><li title="동호회 활동 신청서" rel="FORM" nodeid="702" id="FORM_702" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="동호회 활동 신청서" rel="FORM" nodeid="702" id="FORM_702" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>동호회 활동 신청서</a></li><li title="OJT" rel="FORM" nodeid="666" id="FORM_666" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="OJT" rel="FORM" nodeid="666" id="FORM_666" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>OJT</a></li><li title="보증보험증권 발급신청" rel="FORM" nodeid="29" id="FORM_29" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="보증보험증권 발급신청" rel="FORM" nodeid="29" id="FORM_29" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>보증보험증권 발급신청</a></li></ul></li>
        
        
        <li title="총무" rel="FOLDER" nodeid="108" id="FOLDER_108" class="jstree-open"><ins class="jstree-icon">&nbsp;</ins><a title="총무" rel="FOLDER" nodeid="108" id="FOLDER_108" href="#" data-bypass="1" class=""><ins class="jstree-icon">&nbsp;</ins>총무</a><ul><li title="구매품의서" rel="FORM" nodeid="676" id="FORM_676" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="구매품의서" rel="FORM" nodeid="676" id="FORM_676" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>구매품의서</a></li><li title="택배/퀵 신청서" rel="FORM" nodeid="674" id="FORM_674" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="택배/퀵 신청서" rel="FORM" nodeid="674" id="FORM_674" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>택배/퀵 신청서</a></li><li title="학자금지원신청서" rel="FORM" nodeid="675" id="FORM_675" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="학자금지원신청서" rel="FORM" nodeid="675" id="FORM_675" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>학자금지원신청서</a></li><li title="비품구입신청서" rel="FORM" nodeid="695" id="FORM_695" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="비품구입신청서" rel="FORM" nodeid="695" id="FORM_695" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>비품구입신청서</a></li><li title="지출결의서 (경조금 지원)" rel="FORM" nodeid="677" id="FORM_677" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="지출결의서 (경조금 지원)" rel="FORM" nodeid="677" id="FORM_677" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>지출결의서 (경조금 지원)</a></li><li title="대출사유서" rel="FORM" nodeid="704" id="FORM_704" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="대출사유서" rel="FORM" nodeid="704" id="FORM_704" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>대출사유서</a></li></ul></li>
        
        <li title="회계" rel="FOLDER" nodeid="109" id="FOLDER_109" class="jstree-open"><ins class="jstree-icon">&nbsp;</ins><a title="회계" rel="FOLDER" nodeid="109" id="FOLDER_109" href="#" data-bypass="1" class=""><ins class="jstree-icon">&nbsp;</ins>회계</a><ul><li title="법인카드(개인) 발급 신청서" rel="FORM" nodeid="681" id="FORM_681" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="법인카드(개인) 발급 신청서" rel="FORM" nodeid="681" id="FORM_681" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>법인카드(개인) 발급 신청서</a></li><li title="법인카드 사용 신청서" rel="FORM" nodeid="680" id="FORM_680" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="법인카드 사용 신청서" rel="FORM" nodeid="680" id="FORM_680" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>법인카드 사용 신청서</a></li><li title="학자금신청서" rel="FORM" nodeid="682" id="FORM_682" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="학자금신청서" rel="FORM" nodeid="682" id="FORM_682" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>학자금신청서</a></li><li title="사무용품 신청서" rel="FORM" nodeid="683" id="FORM_683" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="사무용품 신청서" rel="FORM" nodeid="683" id="FORM_683" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>사무용품 신청서</a></li><li title="진료비지원신청서" rel="FORM" nodeid="684" id="FORM_684" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="진료비지원신청서" rel="FORM" nodeid="684" id="FORM_684" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>진료비지원신청서</a></li><li title="도서구입신청서" rel="FORM" nodeid="705" id="FORM_705" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="도서구입신청서" rel="FORM" nodeid="705" id="FORM_705" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>도서구입신청서</a></li><li title="매출보고서" rel="FORM" nodeid="686" id="FORM_686" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="매출보고서" rel="FORM" nodeid="686" id="FORM_686" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>매출보고서</a></li></ul></li>
        
        <li title="보고" rel="FOLDER" nodeid="111" id="FOLDER_111" class="jstree-open"><ins class="jstree-icon">&nbsp;</ins><a title="보고" rel="FOLDER" nodeid="111" id="FOLDER_111" href="#" data-bypass="1" class=""><ins class="jstree-icon">&nbsp;</ins>보고</a><ul><li title="회의록#1" rel="FORM" nodeid="710" id="FORM_710" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="회의록#1" rel="FORM" nodeid="710" id="FORM_710" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>회의록#1</a></li><li title="회의록#2" rel="FORM" nodeid="709" id="FORM_709" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="회의록#2" rel="FORM" nodeid="709" id="FORM_709" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>회의록#2</a></li><li title="개선검토보고서" rel="FORM" nodeid="698" id="FORM_698" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="개선검토보고서" rel="FORM" nodeid="698" id="FORM_698" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>개선검토보고서</a></li><li title="불만발생보고서" rel="FORM" nodeid="699" id="FORM_699" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="불만발생보고서" rel="FORM" nodeid="699" id="FORM_699" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>불만발생보고서</a></li><li title="계약직 평가표" rel="FORM" nodeid="700" id="FORM_700" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="계약직 평가표" rel="FORM" nodeid="700" id="FORM_700" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>계약직 평가표</a></li></ul></li>
        
        <li title="스크립트(기능포함)양식" rel="FOLDER" nodeid="110" id="FOLDER_110" class="jstree-open"><ins class="jstree-icon">&nbsp;</ins><a title="스크립트(기능포함)양식" rel="FOLDER" nodeid="110" id="FOLDER_110" href="#" data-bypass="1" class=""><ins class="jstree-icon">&nbsp;</ins>스크립트(기능포함)양식</a><ul><li title="지출결의서" rel="FORM" nodeid="693" id="FORM_693" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="지출결의서" rel="FORM" nodeid="693" id="FORM_693" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>지출결의서</a></li><li title="출장품의서" rel="FORM" nodeid="690" id="FORM_690" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="출장품의서" rel="FORM" nodeid="690" id="FORM_690" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>출장품의서</a></li><li title="구매신청서" rel="FORM" nodeid="692" id="FORM_692" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="구매신청서" rel="FORM" nodeid="692" id="FORM_692" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>구매신청서</a></li><li title="구매품의서(자동합계)" rel="FORM" nodeid="691" id="FORM_691" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="구매품의서(자동합계)" rel="FORM" nodeid="691" id="FORM_691" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>구매품의서(자동합계)</a></li></ul></li>
        
        <li title="자동결재선 양식" rel="FOLDER" nodeid="60" id="FOLDER_60" class="jstree-open"><ins class="jstree-icon">&nbsp;</ins><a title="자동결재선 양식" rel="FOLDER" nodeid="60" id="FOLDER_60" href="#" data-bypass="1" class=""><ins class="jstree-icon">&nbsp;</ins>자동결재선 양식</a><ul><li title="기안서-직책에 따른 자동결재선" rel="FORM" nodeid="108" id="FORM_108" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="기안서-직책에 따른 자동결재선" rel="FORM" nodeid="108" id="FORM_108" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>기안서-직책에 따른 자동결재선</a></li><li title="기안서-금액에 따른 자동결재선" rel="FORM" nodeid="107" id="FORM_107" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="기안서-금액에 따른 자동결재선" rel="FORM" nodeid="107" id="FORM_107" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>기안서-금액에 따른 자동결재선</a></li><li title="기안서-선택에 따른 자동결재선(1)" rel="FORM" nodeid="106" id="FORM_106" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="기안서-선택에 따른 자동결재선(1)" rel="FORM" nodeid="106" id="FORM_106" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>기안서-선택에 따른 자동결재선(1)</a></li><li title="기안서-선택에 따른 자동결재선(2)" rel="FORM" nodeid="109" id="FORM_109" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="기안서-선택에 따른 자동결재선(2)" rel="FORM" nodeid="109" id="FORM_109" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>기안서-선택에 따른 자동결재선(2)</a></li><li title="휴가신청서-선택에따른자동결재선" rel="FORM" nodeid="110" id="FORM_110" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="휴가신청서-선택에따른자동결재선" rel="FORM" nodeid="110" id="FORM_110" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>휴가신청서-선택에따른자동결재선</a></li><li title="선택/금액에 따른 자동결재선" rel="FORM" nodeid="111" id="FORM_111" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="선택/금액에 따른 자동결재선" rel="FORM" nodeid="111" id="FORM_111" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>선택/금액에 따른 자동결재선</a></li><li title="직위에 따른 자동결재선" rel="FORM" nodeid="112" id="FORM_112" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="직위에 따른 자동결재선" rel="FORM" nodeid="112" id="FORM_112" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>직위에 따른 자동결재선</a></li><li title="기안서-직책에 따른 자동결재선(수정)" rel="FORM" nodeid="183" id="FORM_183" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="기안서-직책에 따른 자동결재선(수정)" rel="FORM" nodeid="183" id="FORM_183" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>기안서-직책에 따른 자동결재선(수정)</a></li></ul></li>
        
        <li title="근태" rel="FOLDER" nodeid="200" id="FOLDER_200" class="jstree-open"><ins class="jstree-icon">&nbsp;</ins><a title="근태" rel="FOLDER" nodeid="200" id="FOLDER_200" href="#" data-bypass="1" class=""><ins class="jstree-icon">&nbsp;</ins>근태</a><ul><li title="(신규)휴가신청-연차관리연동" rel="FORM" nodeid="740" id="FORM_740" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="(신규)휴가신청-연차관리연동" rel="FORM" nodeid="740" id="FORM_740" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>(신규)휴가신청-연차관리연동</a></li><li title="(신규)연장근무신청-근태관리연동" rel="FORM" nodeid="750" id="FORM_750" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="(신규)연장근무신청-근태관리연동" rel="FORM" nodeid="750" id="FORM_750" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>(신규)연장근무신청-근태관리연동</a></li></ul></li>
        
        <li title="미사용" rel="FOLDER" nodeid="220" id="FOLDER_220" class="jstree-last jstree-open"><ins class="jstree-icon">&nbsp;</ins><a title="미사용" rel="FOLDER" nodeid="220" id="FOLDER_220" href="#" data-bypass="1" class=""><ins class="jstree-icon">&nbsp;</ins>미사용</a><ul><li title="테스트" rel="FORM" nodeid="815" id="FORM_815" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="테스트" rel="FORM" nodeid="815" id="FORM_815" href="#" data-bypass="1"><ins class="jstree-icon appr_form">&nbsp;</ins>테스트</a></li></ul></li></ul></div>
        
        <div id="searchResult" style="min-height: 150px; max-height: 375px; display: none;">    
        
        <div class="jstree jstree-default" style="border-bottom:1px dashed #c8c8c8;margin:5px;display:block">        
        
        <ul class="mail_folder"></ul>    
        </div></div></div></div>
        <!-- 문서정보 form_detail -->
        
        <!-- 상세 정보 -->
        <!-- <div class="doc_info">
            <div class="tit_type2">상세정보</div>
            <form>
                <fieldset>
                    <table id="form_detail" class="form_type tb_doc_info">
    <tbody id="form_detail_tbody">
        <tr>
            <th><span class="title">제목</span></th>
            <td></td>
        </tr>
        <tr>
            <th><span class="title">전사문서함</span></th>
            <td></td>
        </tr>
        <tr>
            <th><span class="title">보존연한</span></th>
            <td>
            </td>
        </tr>
    	<tr>
            <th><span class="title">설명</span></th>
            <td></td>
        </tr>
        <tr>
            <th><span class="title">기안부서</span></th>
            <td></td>
        </tr>
        <tr>
            <th><span class="title">부서문서함</span></th>
            <td></td>
        </tr>
    </tbody></table>
                </fieldset>
            </form>
        </div> -->
        <!-- 상세 정보 -->
        
    </div>
    <!-- 문서 양식 목록 -->
			      </div>
			      <!-- 모달 몸통 -->
			      
			      <div class="modal-footer">
			        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
			        <button type="button" class="btn btn-primary">Save changes</button>
			      </div>
			    </div>
			  </div>
			</div>
			
			<!-- END 04/08(목) 결재 양식 선택 Moda -->
</body>
</html>