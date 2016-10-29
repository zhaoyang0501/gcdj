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
			  <input id='deptid' type="hidden"/>
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">首页</a>
							</li>
							<li class="active" targeturl='${pageContext.request.contextPath}/user/index'>发货申请单</li>
						</ul>
					</div>

				<div class="page-content">
						<div class="row">
                            <div class="col-sm-12 table-responsive">
		                           <form class="form-horizontal" action="${pageContext.request.contextPath}/workitem/create" method="post">
		                           	<table class='table table-bordered'>
		                           		<thead>
		                           		<tr  ><th style="text-align: center;" colspan="2" >发货单</th></tr>
		                           		</thead>
		                           		<tbody>
		                           		
		                           		  <tr>
		                           				<td>货物类别</td>
		                           				<td> 
		                           				<label class="radio-inline">
												  <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">工具
												</label>
												<label class="radio-inline">
												  <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> 耗材
												</label>
		                           				</td>
		                           			</tr>
		                           		
		                           		  <tr>
		                           				<td>所属工程</td>
		                           				<td> <input required="required" name='title' type="text" class="form-control">	</td>
		                           			</tr>
		                           			
		                           			
		                           			
		                           			<tr>
		                           				<td>客户单位</td>
		                           				<td> <input required="required" name='title' type="text" class="form-control">	</td>
		                           			</tr>
		                           			<tr>
		                           				<td>客户地址</td>
		                           				<td> <input required="required" name='title' type="text" class="form-control">	</td>
		                           			</tr>
		                           			<tr>
		                           				<td>联系人/电话</td>
		                           				<td> <input required="required" name='title' type="text" class="form-control">	</td>
		                           			</tr>
		                           			
		                           			
		                           			<tr>	
		                           				<td>要求送达日期</td>
		                           				<td>
													<input   name='beginDate' type="text" class="form-control input-group date" >
		                           				</td>
		                           			</tr>
		                           			
		                           			<tr>	
		                           				<td>领导意见</td>
												<td> <textarea required="required" name='remark' rows="2" cols="" style="width: 100%" ></textarea></td>
		                           			</tr>
		                           			
		                           			
		                           			<tr>	
		                           				<td>物流部门意见 </td>
												<td> <textarea required="required" name='remark' rows="2" cols="" style="width: 100%" ></textarea></td>
		                           			</tr>
		                           			
		                           			
		                           				
		                           			<tr>	
		                           				<td>备注说明</td>
												<td> <textarea required="required" name='remark' rows="2" cols="" style="width: 100%" ></textarea></td>
		                           			</tr>
		                           			
		                           			<tr>
		                           				
		                           				<td colspan="2">
		                           				<h4 style="text-align: center; " class="widget-title lighter smaller"><b>发货清单</b> </h4>	
													 <table class='table table-bordered'>
						                           		<thead>
						                           			<tr>
						                           				<th width="30px;"><button id="addRow">＋</button></th>
						                           				<th>序号</th>
						                           				<th>类别</th>
						                           				<th>名称</th>
						                           				<th>数量</th>
						                           			</tr>
						                           		</thead>
						                           		<tbody>
						                           		  <tr>
						                           		  <td width="30px;"><button id="addRow" >-</button></td>
						                           		  		<td>1</td>
						                           				<td>耗材</td>
						                           				<td>水泥</td>
						                           				<td>17包</td>
						                           		  </tr>
						                           		  <tr>
						                           		  		<td width="30px;"><button id="addRow" >-</button></td>
						                           		  		<td>2</td>
						                           				<td>耗材</td>
						                           				<td>钢筋</td>
						                           				<td>12包</td>
						                           		  </tr>
						                           		  <tr> 
						                           		  		<td width="30px;"><button id="addRow" >-</button></td>
						                           		  		<td>3</td>
						                           				<td>XX砂石</td>
						                           				<td>水泥</td>
						                           				<td>12包</td>
						                           		  </tr>
						                           		  </tbody>
					                           		  </table>
													
		                           				</td>
		                           			</tr>
		                           			
		                           			
		                           			
		                           			
		                           			<tr>
		                           				<td>提示</td>
		                           				<td > 
		                           					 <h4>提示</h4>
		                               					 <ol>
									    					<li>工具类由部门经理审核完成</li>
									    					<li>耗材类由总经理审核</li>
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
	    		   url:  $.common.getContextPath() + "/sys/deptment/save",
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
	    	layer.confirm('确定删除当前部门？', {
	    		  btn: ['确定','取消'] //按钮
	    		}, function(){
	    			$.ajax({
	    		 		   url:  $.common.getContextPath() + "/sys/deptment/delete?id="+id,
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
	 		   url:  $.common.getContextPath() + "/sys/deptment/get?id="+id,
	 		   success: function(msg){
	 		     if(msg.code==1){
	 		    	$("input[name='id']").val(msg.datas.id);
	 		    	$("input[name='name']").val(msg.datas.name);
	 		    	$("radio[name='tel']").val(msg.datas.tel);
	 		   		$("input[name='manger']").val(msg.datas.manger);
	 				$("input[name='tel']").val(msg.datas.tel);
	 				$("input[name='code']").val(msg.datas.code);
	 				$("select[name='parent.id']").val(msg.datas.parent.id);
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
		 		   url:  $.common.getContextPath() + "/sys/deptment/alldeptments",
		 		   success: function(msg){
		 			  tree = $('#jstree_demo_div').jstree({
		 			 		'core' : {
		 			 			"multiple" : false,
		 			 		  'data' : msg
		 			 		}}).on('changed.jstree', function (e, data) {
		 			 			console.info(data.node.id);
		 			 			$("#deptid").val(data.node.id);
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
		                "url":  $.common.getContextPath() + "/sys/deptment/listall",
		                "type": "POST",
		                "dataSrc": "datas"
		              },
					"columns" : [{
						"data" : "name"
					}, {
						"data" : "code"
					},{
						"data" : "tel",
					},{
						"data" : "manger",
					},{
						"data" : "parent",
					},{
						"data" : "id",
					}] ,
					 "columnDefs": [
									{
									    "render": function ( data, type, row ) {
									        if(row.parent!=null)
									        	return row.parent.name;
									        else return "";
									        	
									    },
									    "targets":4
									}, 
					                {
					                    "render": function ( data, type, row ) {
					                    	 return "<a tager='_blank' href='javascript:void(0)' onclick='fun_delete("+data+")'>删除 </a>"+
						                        	"<a tager='_blank' href='javascript:void(0)' onclick='fun_update("+data+")'>编辑 </a>";
					                    },
					                    "targets":5
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
			        	data.deptid = $("#deptid").val();
			        	return true;
			     } ).on('xhr.dt', function ( e, settings, json, xhr ) {
			    		 $(".dataTables_processing").hide();	
			     } )
	        });
    </script>
    <script src="${pageContext.request.contextPath}/js/plugins/jsTree/jstree.min.js"></script>
	</body>

</html>
