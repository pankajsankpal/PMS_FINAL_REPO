<html>
<head>
<TITLE>Spring MVC Example with AJAX call</TITLE>
 

<script type="text/javascript"
    src="http://code.jquery.com/jquery-1.10.1.min.js"></script>
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
	 					$('#searchresult').text('');
	 					for(var index in data){
	 						$('#searchresult').append('<p>'+data[index].userName+'<p>');
	 					}
	 				});
 		}
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
        <div id="searchresult"></div>
      
    </div>
</body>
</html>