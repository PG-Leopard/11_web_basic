<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="../js/jquery-3.6.0.min.js"></script>
<script>
	$().ready(function(){

		$("#duplicatedIdCheck").click(function(){
			
			$.ajax({
				
				url  : "ajaxEx03_pro.jsp",
				type : "post",
				data : { id : $("#id").val() },
				success : function(data) { // function의 파라메타로 서버로부터 전송되는 데이터를 전달받을 수 있다.
					var target = '<p id="res">';
					var loc = data.indexOf(target);
					var result = data.substr(loc + target.length , 1);
					
					//alert(result);
					
					if (result == "P"){
						$("#result").text("사용가능한 아이디입니다.");
					}
					else {
						$("#result").text("중복된 아이디입니다.");
					}
				},
				error : function(msg){
					console.log(msg);
				}
				
			});
			
		});
		
		
	})
</script>
</head>
<body>
	<form>
		<p>id : <input type="text" id="id"><input type="button" id="duplicatedIdCheck" value="중복확인"> <span id="result"></span></p> 
	</form>
</body>
</html>