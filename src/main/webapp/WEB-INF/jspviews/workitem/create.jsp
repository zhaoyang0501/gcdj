<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<html lang="en">
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title></title>
		<meta name="description" content="overview &amp; stats" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/font-awesome/4.5.0/css/font-awesome.min.css" />
		<!-- page specific plugin styles -->
		<!-- text fonts -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/fonts.googleapis.com.css" />
		<!-- ace styles -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />
		<!--[if lte IE 9]>
			<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
		<![endif]-->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-skins.min.css" />
		<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-rtl.min.css" />
		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ace-ie.min.css" />
		<![endif]-->
		<!-- inline styles related to this page -->
		<!-- ace settings handler -->
		<script src="${pageContext.request.contextPath}/assets/js/ace-extra.min.js"></script>
		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->
		<!--[if lte IE 8]>
		<script src="${pageContext.request.contextPath}/assets/js/html5shiv.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/respond.min.js"></script>
		<![endif]-->
	<link href="${pageContext.request.contextPath}/css/plugins/datapicker/datepicker3.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/plugins/chosen/chosen.css" rel="stylesheet">
      <link href="${pageContext.request.contextPath}/css/plugins/toastr/toastr.min.css" rel="stylesheet">
      <link href="${pageContext.request.contextPath}/css/plugins/webuploader/webuploader.css" rel="stylesheet">
      <style type="text/css">
      .error{
       color: red;
      }
      </style>
	</head>

	<body class="no-skin">
		<%@include file="../top.jsp" %>
		<div class="main-container ace-save-state" id="main-container">
		<%@include file="../menu.jsp" %>
			<div class="main-content">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">首页</a>
							</li>
							<li class="active" targeturl='${pageContext.request.contextPath}/workitem/create' >任务申请</li>
						</ul>
					</div>

				<div class="page-content">
						<div class="row">
                            <div class="col-sm-12 table-responsive">
		                           <form class="form-horizontal" action="${pageContext.request.contextPath}/workitem/create" method="post">
		                           	<table class='table table-bordered'>
		                           		<thead>
		                           		<tr  ><th style="text-align: center;" colspan="2" >任务详情</th></tr>
		                           		</thead>
		                           		<tbody>
		                           		<tr>
		                           				<td>任务标题</td>
		                           				<td> <input required="required" name='title' type="text" class="form-control">	</td>
		                           			</tr>
		                           			<tr>
		                           				<td>任务说明</td>
		                           				<td> <textarea required="required" name='remark' rows="4" cols="" style="width: 100%" ></textarea></td>
		                           			</tr>
		                           			
		                           			<tr>	
		                           				<td>任务拟开展日期</td>
		                           				<td>
													<input   name='beginDate' type="text" class="form-control input-group date" >
		                           				</td>
		                           			</tr>
		                           				
		                           			<tr>	
		                           				<td>任务拟结束日期</td>
		                           				<td> 
							                        <input  name='endDate' type="text" class="form-control input-group date" >
		                           				</td>
		                           			</tr>	
		                           			<tr>	
		                           				<td>推荐组员</td>
		                           				<td> 
					                                <select  name='applyuserids' class="chzn-select " multiple  data-placeholder="推荐组员" class="chosen-select form-control"  tabindex="2">
					                                	<c:forEach items="${users }" var="user">
					                                		<option value="${user.id }">${user.chinesename}</option>
					                                	</c:forEach>
					                                </select>
		                           				</td>
		                           			</tr>
		                           			
		                           			<tr>	
		                           				<td>附件</td>
		                           				<td> 
							                        <div id="uploader" >
							                          
							                          <div class="container-fluid">
														  <div id="thelist" class="row ">
														  </div>
														</div>
													    	
													    	<div class="row">
													    		<div class="col-xs-12">
													    			<div id="picker">选择文件</div>
													    		</div>
													    	</div>
													    	
													     
													</div>
		                           				</td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>提示</td>
		                           				<td > 
		                           					 <h4>提示</h4>
		                               					 <ol>
									    					<li>这是一个提示</li>
									    				</ol>
		                           				</td>
		                           			</tr>
		                           			<tr>
		                           				<td colspan="6"> 
		                           					 <div class="col-sm-4 col-sm-offset-2">
		                                  			  		<button class="btn btn-primary" type="submit">提交</button>
		                               				 </div>
		                           				</td>
		                           			</tr>
		                           		</tbody>
		                           	</table> 
		                           	</form>
                            </div>
                        </div>
				</div>
				<!-- /.page-content -->
			</div><!-- /.main-content -->
			<a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
				<i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
			</a>
		</div><!-- /.main-container -->

		<!--[if !IE]> -->
		<script src="${pageContext.request.contextPath}/assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
		<script src="${pageContext.request.contextPath}/assets/js/jquery-1.11.3.min.js"></script>
		<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.request.contextPath}/assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->

		<!--[if lte IE 8]>
		  <script src="${pageContext.request.contextPath}/assets/js/excanvas.min.js"></script>
		<![endif]-->
		<script src="${pageContext.request.contextPath}/assets/js/jquery-ui.custom.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/jquery.ui.touch-punch.min.js"></script>
		<!-- ace scripts -->
		<script src="${pageContext.request.contextPath}/assets/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath}/assets/js/ace.min.js"></script>
  <!-- Data Tables -->
    <script src="${pageContext.request.contextPath}/js/plugins/dataTables/jquery.dataTables.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/dataTables/dataTables.bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/common.js?v=1.0.0"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>
    <script src="${pageContext.request.contextPath}/js/jquerydatatable.defaults.js?sf=1"></script>
    
      <script src="${pageContext.request.contextPath}/js/plugins/chosen/chosen.jquery.js"></script>
    <script src="${pageContext.request.contextPath}/js/plugins/datapicker/bootstrap-datepicker.js"></script>
	  <script src="${pageContext.request.contextPath}/js/plugins/toastr/toastr.min.js"></script>
	 <script src="${pageContext.request.contextPath}/plugins/webuploader/webuploader.js "></script>
	 <script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script>
	</body>
	
	
	<script>
    $.common.setContextPath('${pageContext.request.contextPath}');
	<c:if test="${response.code=='1'}">
	  toastr.success('${response.msg}');
	</c:if>
    var table=null;
  
    
    $(document).ready(function(){
    	
    	$("form").validate({
    	    rules: {
    	    	title: "required",
    	        remark: "required",
    	        beginDate: "required",
    	        endDate: "required",
    	    },
    	    ignore:"",
    	    messages: {
    	    	title: "请输入任务标题",
    	    	remark: "请输入任务说明",
    	    	beginDate:"请输入任务起始日期",
    	    	endDate:"请输入任务结束日期"
    	    }
    	});
    	
    	
    	
    	$(".chzn-select").chosen({width:"100%"});
    	
    	var uploader = WebUploader.create({
    		auto:true,
    	    server: '${pageContext.request.contextPath}/fileupload/upload',
    	    pick: '#picker',
    	    resize: false
    	});
    	
    	uploader.on( 'fileQueued', function( file ) {
    		
    		 var $li = $(
    		            '<div id="' + file.id + '" class="col-xs-12 col-sm-2 file-item thumbnail">' +
    		                '<img>' +
    		                '<div class="info">' + file.name + '</div>' +
    		                '<p class="state">等待上传...</p>' +
    		     	       ' <input type="hidden" name="filestr" value=""/>'+
    		            '</div>'
    		            ),
    		        $img = $li.find('img');
    		    $("#thelist").append( $li );
    		
    		    uploader.makeThumb( file, function( error, src ) {
    		        if ( error ) {
    		            $img.replaceWith('<span>不能预览</span>');
    		            return;
    		        }

    		        $img.attr( 'src', src );
    		    }, 100, 100 );
    	});
    	uploader.on( 'uploadSuccess',  function(file, data){
    		 $( '#'+file.id ).find('p.state').text('已上传');
    		 $( '#'+file.id ).find("input").val(data.datas.filepath);
    		    return false;
		});

    	uploader.on( 'uploadError', function( file ) {
    	    $( '#'+file.id ).find('p.state').text('上传出错');
    	});

    	uploader.on( 'uploadComplete', function( file ) {
    	    $( '#'+file.id ).find('.progress').fadeOut();
    	});
    	
    	 $("#submitfile").on( 'click', function() {
    		 uploader.upload();
    	  });

    	 
     	$(".date").datepicker({
     		language:  'zh-CN',
 	        todayBtn:  1,
 	        format:'yyyy-mm-dd',
 			autoclose: 1,
 			todayHighlight: 1
     		});
        });
    
    $(document).ready(function(){
    	$(".nav-list li").removeClass("active");
    	$(".nav-list a[href='"+$(".breadcrumb li[targeturl]").attr("targeturl")+"']").parent().addClass("active");
    });
    </script>

</html>
