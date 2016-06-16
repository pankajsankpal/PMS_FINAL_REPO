<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NF TEST</title>

<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
 
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.1/angular.min.js"></script>

<script>


function checkNewNoti(){
	console.log("inside checkNewNoti");	
	$.getJSON("checkNewNoti",				
				{CHARS:''},				
				function(data){
					console.log(data);
					//console.log("size of list: "+data.length);
					$("#notiNumber").text(data.length);
					
					//$('#noti').text('');
					/*
					for(var index in data){
						$('#noti').append('<li><a href="'+data[index].url+'"><div class=/"clearfix/"><span class=/"pull-left/"><i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>'
								+data[index].type+'<br/>Sent on'+data[index].dateTime+'<br/>'+
								data[index].message+'<br/></span><span class="pull-right badge badge-info">+12</span></div></a></li>'
						);
					}
					*/
					
					
					$('#recent').text((data["newNoti"]-data["oldNoti"]));
					
				});	
}

function onNotiCick(){
	
	console.log("inside onNotiCick");	
	$.getJSON("onNotiCick",			
			{CHARS:''},			
			function(data){
				console.log(data);
				//$('#noti').text('');
				/*
				for(var index in data){
					$('#noti').append('<li><a href="'+data[index].url+'"><div class=/"clearfix/"><span class=/"pull-left/"><i class="btn btn-xs no-hover btn-pink fa fa-comment"></i>'
							+data[index].type+'<br/>Sent on'+data[index].dateTime+'<br/>'+
							data[index].message+'<br/></span><span class="pull-right badge badge-info">+12</span></div></a></li>'
					);
				}
				*/
			});




function clear(){
	console.log("clear notifications");	
	$('#nfresult').text('');
	$.getJSON("checkNewNoti",
			"",	 					 				
			function(data){
				console.log(data);
				$('#recent').text((data["newNoti"]-data["oldNoti"]));
	});
}
	
}

</script>


</head>
<body onload="checkNewNoti();">

<div hidden>


SIMPLE GET NOTIFICATION 

<c:if test="${!empty nf}">

<c:forEach items="${nf}" var="a">
On ${a.dateTime}<br/>
${a.type} notification for ${a.userOrGroupId}:<br/>
${a.message}<br/>
<a href="${a.url}">View</a><br/><br/>
</c:forEach>

</c:if>

</div>

<hr>

<div>
AJAX SUPPORTED SIMPLE GET NOTIFICATION


<hr/>
doLooseNotification<br/>
<div hidden>
<input type ="button" id="box" value="get notification" onClick="doLooseNotification();"/>
        <div id="nfresult"></div>
</div>        
 <hr/>
 doLooseNotification<br/>
<div id="nfresult" >
<p id="recent"></p>
</div>
<hr/>
clear<br/>
<div >
<input type="button" value="check" onclick="onNotiCick();"/>
</div>
<hr/>



</body>
</html>