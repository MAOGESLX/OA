<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 
<%@taglib uri="/struts-tags" prefix="s"%>
<%@include file="debugFile.inc" %>
<% String path = request.getContextPath(); 
String basePath =request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<link href="css/bootstrap-datepicker.css" rel="stylesheet" type="text/css" />

<base href="<%=basePath%>">

<div class="row-fluid">
	<h3 class="page-title">人事合同</h3>
	<ul class="breadcrumb">
		<li><i class="icon-home"></i> <a class="ajaxify" href="index.jsp">主页</a> <i class="icon-angle-right"></i></li>
		<li><a class="ajaxify" href="#">人力资源</a> <i class="icon-angle-right"></i></li>
		<li><a class="ajaxify" href="#">奖罚记录</a><i class="icon-angle-right"></i></li>
		<li><a class="ajaxify" href="#">绩效参数</a><i class="icon-angle-right"></i></li>
		<li><a class="ajaxify" href="#">绩效考核</a><i class="icon-angle-right"></i></li>
	</ul>
</div>

<div class="tab-pane  active" id="tab_2">
	<div class="portlet box green">
		<div class="portlet-title">
			<div class="caption">
				<i class="icon-reorder"></i>添加雇佣合同
			</div>
			<div class="tools">
				<a href="javascript:;" class="collapse"></a> <a href="#portlet-config" data-toggle="modal" class="config"></a> <a href="javascript:;" class="reload"></a> <a href="javascript:;" class="remove"></a>
			</div>
		</div>
		<div class="portlet-body form">
		<!-- BEGIN FORM-->
			<form id="form" action="AgreementAction!addAgree?method=1" class="form-horizontal" method="post">
			<h3 class="form-section">合同管理</h3>
				<div class="row-fluid">
					<div class="span6 ">
						<div class="control-group">
							<label class="control-label">员工状态:</label>
							<div class="controls">
								<input type="hidden" name="agreement.id" value="${agreement.id}" />
								
								<input type="text" class="m-wrap span12" placeholder="" name="agreement.aggState" value="${agreement.aggState}" check-type="required"> <span class="help-block"></span>
							</div>
						</div>
					</div>
					<div class="span6 ">
						<div class="control-group">
							<label class="control-label">合同编号:</label>
							<div class="controls">
								<input type="text" class="m-wrap span12" placeholder="" name="agreement.aggId" value="${agreement.aggId}" check-type="required"> <span class="help-block"></span>
							</div>
						</div>
					</div>
					<!--/span-->
				</div>
				<div class="row-fluid">
					<div class="span6 ">
						<div class="control-group">
							<label class="control-label">合同类型:</label>
							<div class="controls">
								<input type="text" class="m-wrap span12" placeholder="" name="agreement.aggType" value="${agreement.aggType}" check-type="required"> <span class="help-block"></span>
							</div>
						</div>
					</div>
					<div class="span6 ">
						<div class="control-group">
							<label class="control-label">是否有竞业条款:</label>
							<div class="controls">
								<input type="text" class="m-wrap span12" placeholder="" name="agreement.competivieArtical" value="${agreement.competivieArtical}" check-type="required"> <span class="help-block"></span>
							</div>
						</div>
					</div>
					<!--/span-->
				</div>
				<div class="row-fluid">
					<div class="span6 ">
						<div class="control-group">
							<label class="control-label">是否有保密协议:</label>
							<div class="controls">
								<input type="text" class="m-wrap span12" placeholder="" name="agreement.secretProtocal" value="${agreement.secretProtocal}" check-type="required"> <span class="help-block"></span>
							</div>
						</div>
					</div>
					<div class="span6 ">
						<div class="control-group">
							<label class="control-label">签约日期:</label>
							<div class="controls">
								<input type="text" class="m-wrap span12 datapicker" placeholder="" name="agreement.signContractDate" value="${agreement.signContractDate}" readOnly check-type="date"> <span class="help-block"></span>
							</div>
						</div>
					</div>
					<!--/span-->
				</div>
				<div class="row-fluid">
					<div class="span6 ">
						<div class="control-group">
							<label class="control-label">满约日期:</label>
							<div class="controls">
								<input type="text" class="m-wrap span12 datapicker" placeholder="" name="agreement.fullAboutDate" value="${agreement.fullAboutDate}" readOnly check-type="date"> <span class="help-block"></span>
							</div>
						</div>
					</div>
					<div class="span6 ">
						<div class="control-group">
							<label class="control-label">鉴证机关:</label>
							<div class="controls">
								<input type="text" class="m-wrap span12" placeholder="" name="agreement.identifyOffice" value="${agreement.identifyOffice}" check-type="required"> <span class="help-block"></span>
							</div>
						</div>
					</div>
					<!--/span-->
				</div>
				<div class="row-fluid">
					<div class="span6 ">
						<div class="control-group">
							<label class="control-label">鉴证日期:</label>
							<div class="controls">
								<input type="text" class="m-wrap span12 datapicker" placeholder="" name="agreement.identifyDate" value="${agreement.identifyDate}" readOnly check-type="date"> <span class="help-block"></span>
							</div>
						</div>
					</div>
					<div class="span6 ">
						<div class="control-group">
							<label class="control-label">其他事宜:</label>
							<div class="controls">
								<input type="text" class="m-wrap span12" placeholder="" name="agreement.others" value="${agreement.others}" > <span class="help-block"></span>
							</div>
						</div>
					</div>
					<!--/span-->
				</div>
				<%@ include file="workFlowSelect.jsp" %> 
				<div class="form-actions">
					<button id="submit" type="button" class="btn btn-primary" data-action="AgreementAction!find">保存</button>
					<button type="button" class="btn">Cancel</button>
				</div>
			</form>
			<!-- END FORM-->
		</div>
	</div>
</div>
<script src="js/bootstrap-datepicker.js" type="text/javascript"></script>
<script src="js/myAjaxify.js" type="text/javascript"/>
