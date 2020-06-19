<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../inc/header.jsp"%>
<%
	String tempPage = request.getParameter("page");
	int cPage = 0;
	if(tempPage == null || tempPage.length()==0){
		cPage = 1;
	}
	
	try {
		cPage = Integer.parseInt(tempPage);
	}catch(NumberFormatException e){
		cPage = 1;
	}
%>
	<nav aria-label="breadcrumb ">
	  <ol class="breadcrumb justify-content-end">
	    <li class="breadcrumb-item "><a href="#">홈</a></li>
	    <li class="breadcrumb-item active">공지사항</li>
	  </ol>
	</nav>
	
	<div class = "container">
	<!-- container-fluid 클래스/화면 꽉 차게 
	   container - 고정넓이의 wrapper 
	 -->
	 <div class = "row">
	 <div class = "col -md-12">
       <h3> 공지사항 작성</h3>


	 
	
	
	
      </div>	
	</div>
	</div>
	
	
	
	
	
	
	
	
    
	
	
<%@ include file="../inc/footer.jsp"%>

