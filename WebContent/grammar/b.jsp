<%@page import="kr.or.kpc.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Script Element</title>
</head>
<body>

	  
		 <%  
	 String id = request.getParameter("id");
	 String num = request.getParameter("num");
	 String name = request.getParameter("name");
	 %>
	  
	  id : <%=id %>, num : <%=num %>, name : <%=name %>
	
</body>
</html>