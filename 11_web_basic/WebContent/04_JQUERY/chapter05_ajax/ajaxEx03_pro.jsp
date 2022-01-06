<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajaxPro</title>
</head>
<body>
	
	<% 
	
		String[] members = {"user1" , "user2" , "user3"};
		String id = request.getParameter("id");
		String result = "P";
		
		for (String member : members) {
			if (id.equals(member)){
				result = "N";
			}
		}
		
	%>
	<%=result %>


</body>
</html>