$(function() {
	var userId = $("#userId").val();
	var param = {"userId":userId};
	getDepartmentInfo();
	getbasicInfo();
	$("#submitVoteDepart").click(function() {
		var trs = $("#departTable").find("tr");
		var data = getVoteData(trs, userId);
		var list = data.data;
		for (var i = 0; i < list.length; i++) {
			if (!list[i].voteResult) {
				alert("投票失败！\n45个部门必须全部评定");
				return;
			}
		}
		$.post("/vote/saveDepartmentVoteInfo", {'userId':userId,'param':JSON.stringify(data)},
			function(data){
			alert("投票成功！");
		});
	});
	$("#submitVoteBase").click(function() {
		var baseTrs = $("#baseDepartTable").find("tr");
		var data = getVoteData(baseTrs, userId);
		var list = data.data;
		var count = 0;
		for (var i = 0; i < list.length; i++) {
			if (list[i].voteResult) {
				count++;
			}
		}
		if (count < 20) {
			alert("已经评定"+count+"个，至少评定20个部门");
			return;
		}
		$.post("/vote/saveBasicDepartmentVoteInfo", {'userId':userId,'param':JSON.stringify(data)},
			function(data){
			alert("投票成功！");
		});
	});
//	getDepartmentInfo(param);
//	var submitVoteData=[];
})

function getbasicInfo(param){
	$.ajax({
		url:"/vote/getBasicDepartmentVoteResult",
		type:"GET",
		async:true,
		data:param,
		// data:userId,
		// data:JSON.stringify(param),
		// dataType:"json",
		success:function(data){  			
			  console.log("chenggong"); 
			  console.log(data);
			  var basicDepartmentData=data.data;
			  for(var item of basicDepartmentData ){
				  var inner=$('<tr><td>'+item.id+'</td><td>'+item.departname+'</td><td><input value="1" class="checkItem" type="checkbox"/></td><td><input value="2" class="checkItem" type="checkbox"/></td><td><input value="3" class="checkItem" type="checkbox"/></td><td><input value="4" class="checkItem" type="checkbox"/></td></tr>');
				  $('#baseDepartTable').append(inner);
			  }
			  $('.checkItem').click(function(){
		    	  // $(this).parent().siblings().find('.checkItem').prop('checked',false);
		    	  var aa=$(this).parent().siblings();
	     		  aa.each(function(index,ele){
	     			// console.log($(ele).find('.hh'));
	     			$(ele).find('.checkItem').prop('checked',false);
	     			
	     		  })

		    	})
		},
		error:function(data){
			  console.log("shibai");
			// console.log(data);
		}
		
	});
};
function getDepartmentInfo(param){
	$.ajax({
		/* url:"/toupiaojiemian?userId="+userId, */
		url:"/vote/getDepartmentVoteResult",
		type:"GET",
		async:true,
		data:param,
		// data:userId,
		// data:JSON.stringify(param),
		// dataType:"json",
		success:function(data){  			
			  console.log("chenggong"); 
			  console.log(data);
			  var departmentData=data.data;
			  for(var item of departmentData ){
				  var inner=$('<tr><td>'+item.id+'</td><td>'+item.departName+'</td><td><input value="1" class="checkItem" type="checkbox"/></td><td><input value="2" class="checkItem" type="checkbox"/></td><td><input value="3" class="checkItem" type="checkbox"/></td><td><input value="4" class="checkItem" type="checkbox"/></td></tr>');
				  $('#departTable').append(inner);
			  }
			  $('.checkItem').click(function(){
				  $(this).addClass('checked');
		    	  // $(this).parent().siblings().find('.checkItem').prop('checked',false);
		    	  var aa=$(this).parent().siblings();
	     		  aa.each(function(index,ele){
	     			// console.log($(ele).find('.hh'));
	     			$(ele).find('.checkItem').siblings().prop('checked',false);
	     			
	     		  })

		    	})
		},
		error:function(data){
			  console.log("shibai");
			// console.log(data);
    			}
    			
    		});
    	};

function getVoteData(trs, userId) {
var data2 = {"data":""};
var datas = [];
for (var i = 0; i < trs.length; i++) {
	tds = $(trs[i]).find("td");
	checkboxs = $(trs[i]).find(".checkItem");
	var obj = new Object();
	obj.departName = $(tds[1]).text();
	obj.id=$(tds[0]).text();
	obj.userId=userId;
	obj.remark='';
	
	for (var j = 0; j < checkboxs.length; j++) {
		if ($(checkboxs[j]).prop("checked")) {
				obj.voteResult = $(checkboxs[j]).val();
			}
		}
		datas.push(obj);
	}
	console.log(datas);
	data2.data = datas;
	return data2;
}