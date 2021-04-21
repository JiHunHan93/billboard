<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/billbo/resources/hrtemp/css/bootstrap.min.css">
<title>Insert title here</title>
<!-- 지훈 CSS -->
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval.css">
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval2.css">
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval3.css">
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval5.css">
<link rel="stylesheet" href="/billbo/resources/jihunhan/css/approval6.css">
<!-- 최신모델 -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script> -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<!-- 모달 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
</head>
<style>
.modal-dialog.modal-fullsize {
  width: 0%;
  height: 0%;
  margin: 0;
  padding: 0;
}
.modal-content.modal-fullsize {
  height: auto;
  min-height: 50%;
  border-radius: 0; 
}
</style>
<body>

			<!-- 04/08(목) 결재 양식 선택 Moda -->
			<section class="function">
				<button type="button" class="btn_tool" data-toggle="modal" data-target="#exampleModal">
				  <span class="ic_toolbar info"></span>
				  <span class="txt">결재 정보</span>
				</button>
			</section>
			  
			<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
			  <div class="modal-dialog modal-fullsize" role="document">
			    <div class="modal-content modal-fullsize" style="width:1px;">
			      
			      <!-- 모달 몸통 -->
			      <div class="modal-body">
			      
			      <!-- go_popup -->
			      <div class="go_popup layer_normal detail_search_wrap layer_approval_line ui-draggable" id="gpopupLayer" data-id="19ab247a-1136-4643-b157-c300cf74d916" data-close="false" style="width: 900px; top: 100px; position: absolute; left: 501.5px; z-index: 99;" data-layer="">
				      <header>
					      <h1>결재 정보</h1>
					      <a id="go_popup_close_icon" class="btn_layer_x" style="" data-bypass="" title="닫기">
					      <span class="ic"></span><span class="txt"></span>
					      </a>
				      </header>
				      
				      
				      <!-- content apprflow-editor -->
			      	<div class="content apprflow-editor">
			      	
			      	<!-- tab : 결재선, 참조가, 열람자 -->
			      	<div class="tab_menu_wrap">
						<ul class="maintab tab_menu"><li data-role="tab" data-tabid="apprline" class="active"><span class="ic_txt_change">*</span><span class="txt">결재선</span></li><li data-role="tab" data-tabid="referer"><span class="ic_txt_change">*</span><span class="txt">참조자</span></li><li data-role="tab" data-tabid="reader"><span class="ic_txt_change">*</span><span class="txt">열람자</span></li></ul>
						<div class="alert-modified alert_help_wrap">
							<ins class="ic_con ic_alert"></ins>
							<span class="txt">* 저장되지 않은 정보가 있습니다.</span>
						</div>
					</div><!-- //tab -->

						<div class="set_wrap wrap_approval_agree">
						
						    <div class="aside-apprline set_nav" style="display: block;">
						
						        
						        <ul class="sidetab tab_type3 tab_type3_column2"><li data-role="tab" data-tabid="orgtree" class="selected first"><a href="#" data-bypass=""><span class="txt">조직도</span></a></li><li data-role="tab" data-tabid="myapprline" class="last"><a href="#" data-bypass=""><span class="txt">나의 결재선</span></a></li></ul>
						        <div class="sidetab-item"><div id="aside-dept-orgtree" class="tabview-depttree" style="display: none;"><div class="orgTree_wrap">	<div class="orgTree content_tab_wrap">		<div id="aside-dept-orgtree-tree" class="jstree jstree-7 jstree-default jstree_depth" style="min-height: 306px; max-height: 306px;"><ul><li title="다우그룹" rel="company" nodeid="10" id="company_10" class="jstree-open jstree-last jstree-company depth0"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="company" nodeid="10" id="company_10" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon company"></ins>다우그룹</a><ul><li title="영업본부" rel="org" nodeid="123" id="org_123" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="123" id="org_123" href="#" data-bypass="1" nodestate="DISABLE"><ins class="jstree-icon">&nbsp;</ins>영업본부</a></li><li title="개발본부" rel="org" nodeid="178" id="org_178" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="178" id="org_178" href="#" data-bypass="1" nodestate="DISABLE"><ins class="jstree-icon">&nbsp;</ins>개발본부</a></li><li title="경영지원본부" rel="org" nodeid="124" id="org_124" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="124" id="org_124" href="#" data-bypass="1" nodestate="DISABLE"><ins class="jstree-icon">&nbsp;</ins>경영지원본부</a></li><li title="서비스본부" rel="org" nodeid="182" id="org_182" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="182" id="org_182" href="#" data-bypass="1" nodestate="DISABLE"><ins class="jstree-icon">&nbsp;</ins>서비스본부</a></li><li title="(주)애드픽션" rel="org" nodeid="221" id="org_221" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="221" id="org_221" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon">&nbsp;</ins>(주)애드픽션</a></li></ul></li></ul></div>	</div>	<div id="aside-dept-orgtree-search" class="content_tab_wrap" style="display: none;border:none;padding:5px 0px 5px 0px">	</div></div></div><div id="aside-orgtree" class="tabview-orgtree" style="display: block;"><section class="search">    <div class="search_wrap">    	<form onsubmit="return false;">        <input id="org_tree_tab_search_input" class="search" type="text" placeholder="이름/아이디/부서/직위/직책/전화" title="이름/아이디/부서/직위/직책/전화">        <input class="btn_search" type="button" value="" title="" evt-rol="mail-search"> 		</form>    </div>    <div id="detailSearchLayerWrap" style="position:relative;display:none;z-index:60"></div></section><div class="orgTree_wrap">	<div class="orgTree content_tab_wrap">		<div id="aside-orgtree-tree" class="jstree jstree-9 jstree-focused jstree-default jstree_depth" style="min-height: 306px; max-height: 306px;"><ul><li title="다우그룹" rel="company" nodeid="10" id="company_10" class="jstree-open jstree-last jstree-company depth0"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="company" nodeid="10" id="company_10" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon company"></ins>다우그룹</a><ul><li title="김상후 대표이사" rel="MASTER" nodeid="457" id="MASTER_457" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="MASTER" nodeid="457" id="MASTER_457" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon worker"></ins>김상후 대표이사</a></li><li title="구정모 사장" rel="MEMBER" nodeid="260" id="MEMBER_260" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="MEMBER" nodeid="260" id="MEMBER_260" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon worker"></ins>구정모 사장</a></li><li title="이재오 전무" rel="MEMBER" nodeid="481" id="MEMBER_481" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="MEMBER" nodeid="481" id="MEMBER_481" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon worker"></ins>이재오 전무</a></li><li title="영업본부" rel="org" nodeid="123" id="org_123" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="123" id="org_123" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon">&nbsp;</ins>영업본부</a></li><li title="개발본부" rel="org" nodeid="178" id="org_178" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="178" id="org_178" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon">&nbsp;</ins>개발본부</a></li><li title="경영지원본부" rel="org" nodeid="124" id="org_124" class="jstree-open"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="124" id="org_124" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon">&nbsp;</ins>경영지원본부</a><ul><li title="한성준 과장" rel="MASTER" nodeid="476" id="MASTER_476" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="MASTER" nodeid="476" id="MASTER_476" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon worker"></ins>한성준 과장</a></li><li title="유수연 상무" rel="MODERATOR" nodeid="191" id="MODERATOR_191" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="MODERATOR" nodeid="191" id="MODERATOR_191" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon worker"></ins>유수연 상무</a></li><li title="전병헌 차장" rel="MODERATOR" nodeid="334" id="MODERATOR_334" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="MODERATOR" nodeid="334" id="MODERATOR_334" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon worker"></ins>전병헌 차장</a></li><li title="이다우 감사" rel="MEMBER" nodeid="344" id="MEMBER_344" class="jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="MEMBER" nodeid="344" id="MEMBER_344" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon worker"></ins>이다우 감사</a></li><li title="재경팀" rel="org" nodeid="132" id="org_132" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="132" id="org_132" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon">&nbsp;</ins>재경팀</a></li><li title="총무팀" rel="org" nodeid="176" id="org_176" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="176" id="org_176" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon">&nbsp;</ins>총무팀</a></li><li title="인사팀" rel="org" nodeid="177" id="org_177" class="jstree-closed jstree-last"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="177" id="org_177" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon">&nbsp;</ins>인사팀</a></li></ul></li><li title="서비스본부" rel="org" nodeid="182" id="org_182" class="jstree-closed"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="182" id="org_182" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon">&nbsp;</ins>서비스본부</a></li><li title="(주)애드픽션" rel="org" nodeid="221" id="org_221" class="jstree-last jstree-leaf"><ins class="jstree-icon">&nbsp;</ins><a title="" rel="org" nodeid="221" id="org_221" href="#" data-bypass="1" class="ui-draggable"><ins class="jstree-icon">&nbsp;</ins>(주)애드픽션</a></li></ul></li></ul></div>	</div>	<div id="aside-orgtree-search" class="content_tab_wrap" style="display: none;border:none;padding:5px 0px 5px 0px">	</div></div></div></div>
						
						    </div>
						    
						    <div class="maintab-item wrap_tab_data"><div class="set_data wrap_approvalLine_set tabview-apprline" style="display: block;"><table class="type_normal tb_approval_line">
						    <thead>
						        <tr>
						            <th class="btn"></th>
						            <th class="kind">타입</th>
						            <th class="name">이름</th>
						            <th class="depart">부서</th>
						            <th class="state">상태</th>
						            <th class="func">
										<span id="allActivityDelete" class="btn_bdr delete_activity" title="전체 삭제">
											<span class="ic_classic ic_basket"></span>
										</span>
						            </th>
						            <th class="blank"></th>
						        </tr>
						    </thead>
						</table>        
						<div id="activity_groups" class="list_approval_line_wrap"><div class="activity_group ui-sortable" data-index="0"><div class="approval_line"> 
						    <div class="tit_type3"><span class="txt">승인</span></div>
						    
						    
						    <div class="list_approval_line">
						        <div class="btn_langth add_activity" title="추가" data-id=""><span class="ic_con ic_arrow_type4"></span></div>
						        <div class="tb_approval_line_wrap">
						            <table class="appr-activity-table type_normal tb_approval_line">
						                <tbody>
						                        <tr data-userid="235" data-deptid="124" class="appr-activity activity inactive  ui-droppable">
						                            <td class="kind">
						                                기안
						                            </td>
						                            <td class="name">전병헌</td>
						                            <td class="depart">경영지원본부</td>
						                            <td class="state"></td>
						                            <td class="func"></td>
						                        </tr>
						                        <tr data-userid="29" data-deptid="10" class="appr-activity activity   ui-droppable">
						                            <td class="kind">
						                                <select>
								                                    <option name="type" value="APPROVAL" selected="">결재</option>
						                                </select>
						                            </td>
						                            <td class="name">구정모</td>
						                            <td class="depart">다우그룹</td>
						                            <td class="state"></td>
						                            <td class="func"><span class="btn_bdr delete_activity" title="삭제"><span class="ic_classic ic_basket"></span></span></td>
						                        </tr>
						                        <tr data-userid="63" data-deptid="10" class="appr-activity activity   ui-droppable">
						                            <td class="kind">
						                                <select>
								                                    <option name="type" value="APPROVAL" selected="">결재</option>
						                                </select>
						                            </td>
						                            <td class="name">이재오</td>
						                            <td class="depart">다우그룹</td>
						                            <td class="state"></td>
						                            <td class="func"><span class="btn_bdr delete_activity" title="삭제"><span class="ic_classic ic_basket"></span></span></td>
						                        </tr>
						                        <tr data-userid="236" data-deptid="124" class="appr-activity activity   ui-droppable">
						                            <td class="kind">
						                                <select>
								                                    <option name="type" value="APPROVAL" selected="">결재</option>
						                                </select>
						                            </td>
						                            <td class="name">한성준</td>
						                            <td class="depart">경영지원본부</td>
						                            <td class="state"></td>
						                            <td class="func"><span class="btn_bdr delete_activity" title="삭제"><span class="ic_classic ic_basket"></span></span></td>
						                        </tr>
						                        <tr data-userid="55" data-deptid="124" class="appr-activity activity  last ui-droppable">
						                            <td class="kind">
						                                <select>
								                                    <option name="type" value="APPROVAL" selected="">결재</option>
						                                </select>
						                            </td>
						                            <td class="name">유수연</td>
						                            <td class="depart">경영지원본부</td>
						                            <td class="state"></td>
						                            <td class="func"><span class="btn_bdr delete_activity" title="삭제"><span class="ic_classic ic_basket"></span></span></td>
						                        </tr>
						                </tbody>
						            </table>
						        </div>
						    </div>
						</div>
						</div><div class="activity_group hidden_and_empty_group" style="height: 78px;">     <div class="empty_approval_line" style="height: 100%">
						         <table style="height: 100%">
						             <tbody style="height: 100%">
						                 <tr class="appr-activity activity ui-droppable" data-isnullactivity="true" style="height: 100%">
						                     <td style="width: 100%; height: 100%"></td>
						                 </tr>
						             </tbody>
						         </table>
						     </div>
						</div></div>
						
						<div class="tit_type2">
							<a class="save-myapprline-btn btn_fn6" href="#" data-bypass="">개인 결재선으로 저장</a>
							<span class="horspace1"></span>
						    <span class="tit">합의방식 : </span>
						    <span class="option_wrap">
						    	<input id="series" type="radio" name="useParallelAgreement" value="false" checked="">
						    	<label for="series">순차합의</label>
						   	</span>
						    <span class="option_wrap">
						    	<input id="parallel" type="radio" name="useParallelAgreement" value="true">
						    	<label for="parallel">병렬합의</label>
						   	</span>
						</div></div></div>
						</div>
				</div>
				<!-- content apprflow-editor -->

				<footer class="btn_layer_wrap"><a class="btn_major_s" data-bypass="" style="margin-right:5px" title="확인"><span class="ic"></span><span class="txt">확인</span></a><a class="btn_minor_s" data-bypass="" style="margin-right:5px" title="취소"><span class="ic"></span><span class="txt">취소</span></a>
				</footer>
					</div>
					<!-- go_popup -->
			      </div>
			      <!-- 모달 몸통 -->
			      
			    </div>
			  </div>
			</div>
</body>
</html>