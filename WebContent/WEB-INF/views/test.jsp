<html data-ng-app>
<head>
<TITLE>Spring MVC Example with AJAX call</TITLE>
 

<script src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
 
<script src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.1/angular.min.js"></script>




<script type="text/javascript">
    function Ajax() {
    	
    	var a  = $('#a').val();
    	var b  = $('#b').val();
        $.ajax({
            url : 'ajaxtest.html',
            data : "num1="+a+"&num2="+b,
            success : function(data) {
                $('#result').html(data);
            }
        });
    }
</script>
<script type="text/javascript">
 		function doSearch(){
	 		$.getJSON("looseSearch",
	 				
	 				{CHARS:$('#searchbox').val()},
	 				
	 				function(data){
	 					console.log(data);
	 					$('#searchresult').text('');
	 					for(var index in data){
	 						$('#searchresult').append('<option>'+data[index].userName+'-'+data[index].name+'</option>');
	 					}
	 				});
 		}
</script>

 <script>
    
 
 function AJAXCtrl($scope,$http){
 	
            
            console.log("inside Ctrl");
           
            $http({
                method: "GET",
                url: url + "/looseSearch",
                params: {
                    CHARS : $('#mysearch').val()
                }
            }).then(function(response) {
                            	
            	console.log("inside THEN");
                $scope.names = response.data;
            });
    
 	}
    	/*
    	console.log("called");
      
      var nameApp = angular.module("testAJAX");
      
      /* 
      nameApp.controller('AJAXCtrl', function ($scope,$http){
  		  	  
        //$scope.names = ['Larry', 'Curly', 'Moe'];
        console.log("inside Ctrl");
       
        $http({
            method: "GET",
            url: url + "/looseSearch",
            params: {
                CHARS : $('#mysearch').val()
            }
        }).then(function(response) {
                        	
        	console.log("inside THEN");
            $scope.names = response.data;
        });
      });
    } */
    
    
    </script>

</head>
 
<body>
    <div align="center">
        <br> <br> ${message} <br> <br>
        <input type="number" value ="1" id="a" onchange="Ajax()"/>
        <input type="number" value ="2" id="b" onchange="Ajax()"/>
        <br>
        <div id="result"></div>
        
        <br>
        <br><br>
        <input type ="text" id="searchbox" onKeyUp="doSearch();">
        <select id="searchresult"></select>
      
    </div>
    
      
    <!-- <div data-ng-controller="AJAXCtrl">
    <br><br>
        <input type ="text" id="mysearch" onKeyUp="AJAXCtrl();" data-ng-model="my"/>
        
    <br>{{my}}<br>    
    <ul>
      <li data-ng-repeat="name in names">{{name.userName}} - {{name.name}}</li>
    </ul>
    </div> -->
    
</body>
</html>