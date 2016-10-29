<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>  
<html lang="en">
	<head>
	  <script src="${pageContext.request.contextPath}/js/plugins/layer/layer.js"></script>
	 <link href="${pageContext.request.contextPath}/css/plugins/jsTree/style.min.css" rel="stylesheet">
		<title></title>
      </style>
	</head>
	<body>
	
			<div class="main-content">
			  <input id='cid' type="hidden"/>
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">首页</a>
							</li>
							<li class="active" targeturl='${pageContext.request.contextPath}/user/index'>物品清单维护</li>
						</ul>
					</div>

				<div class="page-content">
						<div class="row">
						<div class="col-sm-4">
							<div class="widget-box ">
												<div class="widget-header">
													<h4 class="widget-title lighter smaller">物品种类</h4>
												</div>
	
												<div class="widget-body">
													<div class="widget-main ">
														<div id="jstree_demo_div">
			           									</div>
													</div>
												</div>
							</div>
	          			 </div>
	          			 
							<div class="col-sm-8">
							 <div class="widget-box ">
								<div class="widget-header">
										<h4 class="widget-title lighter smaller">物品清单</h4>
								</div>
	
								<div class="widget-body">
										<div class="widget-main ">
											<div class="page-header page-header-revise">
												<form role="form" class="form-inline">
													<div class="form-group">
														<div class="input-group">
															<input type="text"  id="_name"
																placeholder="名称" class="form-control ">
															<span class="input-group-btn">
																<button class="btn btn-purple btn-sm" id="_search" type="button">
																	<i class="icon-search icon-on-right "></i> 搜索
																</button>
															</span>
														</div>
														  <button class="btn btn-primary btn-sm" type="button" id='_new'>新建</button>
													</div>
												</form>
			                       			 </form>
											</div>

											<div class="table-responsive" >
						                         <table ID='dt_table_view' class="table table-striped table-bordered table-hover ">
							                            <thead>
							                                <tr>
																<th>代码</th>
																<th>物品名称</th>
																<th>图号</th>
																<th>型号</th>
																<th>规格</th>
																<th>类别</th>
																<th>状态</th>
																<th>操作</th>
															</tr>
							                            </thead>
							                       		 <tbody>
							                            </tbody>
						                          </table>
						                          </div>
										</div>
									</div>
												
						</div>
						</div>
				</div>
				
				
				
				   <div id='_form' style="display: none;">
 						 <div class="row">
                            <div class="col-sm-12 ">
		                          <form class="form-horizontal" action="" method="get">
		                           <input name='id' type="hidden"/>
		                           	<table class='table table-bordered'>
		                           		<thead>
		                           		<tr style="text-align: center;" ><td colspan="6" ><h3>物品清单信息<h3></td></tr>
		                           		</thead>
		                           		<tbody>
		                           			<tr>
		                           				<td>代码</td>
		                           				<td> <input name='code' type="text" class="form-control"></td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				
		                           			<tr>
		                           				<td>名称</td>
		                           				<td> <input name='name' type="text" class="form-control"></td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>图号</td>
		                           				<td> <input name='imgcode' type="text" class="form-control"></td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>型号</td>
		                           				<td> <input name='model' type="text" class="form-control"></td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>规格</td>
		                           				<td> <input name='format'  type="text" class="form-control"></td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>状态</td>
		                           				<td> <input name='state'  type="text" class="form-control"></td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td>类别</td>
		                           				<td>
												<select name='category.id' class=" form-control">
												  	<c:forEach var="bean" items="${cateselects}">
												  		<option value="${bean.id }">${bean.text }</option>
												  	</c:forEach>
												  </select>
		                           				</td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				<td colspan="6"> 
		                           					 <div class="col-sm-4 col-sm-offset-2">
		                                  			  		<button class="btn btn-primary" type="button" onclick="submit_form()">提交</button>
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
		
			<script>
	 var table=null;
	    var tree;
	    function submit_form(){
	    	$.ajax({
	    		   type: "POST",
	    		   url:  $.common.getContextPath() + "/sys/item/save",
	    		   data: $("form").serialize(),
	    		   success: function(msg){
	    		     if(msg.code==1){
	    		    	 toastr.success('操作成功');
	    		    	 window.location.reload();
	    		     }
	    		     layer.closeAll() ;
	    		   }
	    		});
	     }
	    
	    function fun_delete(id){
	    	layer.confirm('确定删除当前物品？', {
	    		  btn: ['确定','取消'] //按钮
	    		}, function(){
	    			$.ajax({
	    		 		   url:  $.common.getContextPath() + "/sys/item/delete?id="+id,
	    		 		   success: function(msg){
	    		 		     if(msg.code==1){
	    		 		    	 toastr.success('操作成功');
	    		 		    	window.location.reload();
	    		 		     }
	    		 		     layer.closeAll() ;
	    		 		   }
	    		 	});
	    		}, function(){
	    			 layer.closeAll() ;
	    		});
	     }
	   
	    function fun_update(id){
	    	$.ajax({
	 		   url:  $.common.getContextPath() + "/sys/item/get?id="+id,
	 		   success: function(msg){
	 		     if(msg.code==1){
	 		    	$("input[name='id']").val(msg.datas.id);
	 		    	$("input[name='name']").val(msg.datas.name);
	 		    	$("radio[name='code']").val(msg.datas.code);
	 		   		$("input[name='imgcode']").val(msg.datas.imgcode);
	 				$("input[name='format']").val(msg.datas.format);
	 				$("input[name='model']").val(msg.datas.model);
	 				$("select[name='category.id']").val(msg.datas.category.id);
	 		    	layer.open({
	      			  type: 1,
	      			  skin: 'layui-layer-rim', 
	      			  content: $("#_form"),
	      			  area: "800px"
	      			});
	 		     }
	 		   }
	 		});
	     }
	    
	    function init_dept_tree(){
	    	$.ajax({
		 		   url:  $.common.getContextPath() + "/sys/item/allcategorys",
		 		   success: function(msg){
		 			  tree = $('#jstree_demo_div').jstree({
		 			 		'core' : {
		 			 			"multiple" : false,
		 			 		  'data' : msg
		 			 		}}).on('changed.jstree', function (e, data) {
		 			 			console.info(data.node.id);
		 			 			$("#cid").val(data.node.id);
		 			 			 table.draw();
		 			 		  });
		 			   
		 		   }
		 	});
	    }
	   
	    $(document).ready(function(){
	    	init_dept_tree();
	        	$("#_new").click(function(){
	        		$("input[name='id']").val("");
	 		    	$("input[name='name']").val("");
	 		    	$("radio[name='code']").val("");
	 		   		$("input[name='tel']").val("");
	 				$("input[name='manger']").val("");
	 				$("select[name='parent']").val("");
	        		layer.open({
	        			  type: 1,
	        			  skin: 'layui-layer-rim', //加上边框
	        			  content: $("#_form"),
	        			  area: "900px"
	        			});
	        	});
	        	table=$('#dt_table_view').DataTable( {
	        		"dom": "rt<'row'<'col-sm-5'i><'col-sm-7'p>>",
		            "ajax": {
		                "url":  $.common.getContextPath() + "/sys/item/listall",
		                "type": "POST",
		                "dataSrc": "datas"
		              },
					"columns" : [{
						"data" : "code"
					}, {
						"data" : "name"
					},{
						"data" : "imgcode",
					},{
						"data" : "model",
					},{
						"data" : "format",
					},{
						"data" : "category.name",
					},{
						"data" : "state",
					},{
						"data" : "id",
					}] ,
					 "columnDefs": [
									{
									    "render": function ( data, type, row ) {
									        if(row.category!=null)
									        	return row.category.name;
									        else return "";
									        	
									    },
									    "targets":5
									}, 
									{
									    "render": function ( data, type, row ) {
									    	return "<span class='label label-success arrowed'>正常</span>";
									        	
									    },
									    "targets":6
									}, 
					                {
					                    "render": function ( data, type, row ) {
					                    	 return "<a tager='_blank' href='javascript:void(0)' onclick='fun_delete("+data+")'>删除 </a>"+
						                        	"<a tager='_blank' href='javascript:void(0)' onclick='fun_update("+data+")'>编辑 </a>";
					                    },
					                    "targets":7
					                }
					               
					            ],
	        		"initComplete": function () {
	        			var api = this.api();
	        			$("#_search").on("click", function(){
	            		 	api.draw();
	        			} );
	        		} 
	        	 } ).on('preXhr.dt', function ( e, settings, data ) {
			        	data.name = $("#_name").val();
			        	data.cid = $("#cid").val();
			        	return true;
			     } ).on('xhr.dt', function ( e, settings, json, xhr ) {
			    		 $(".dataTables_processing").hide();	
			     } )
	        });
    </script>
    <script src="${pageContext.request.contextPath}/js/plugins/jsTree/jstree.min.js"></script>
	</body>

</html>
