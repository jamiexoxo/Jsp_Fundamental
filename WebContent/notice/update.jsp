<%@page import="kr.or.kpc.dto.NoticeDto"%>
<%@page import="kr.or.kpc.dao.NoticeDao"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%
	//parameter 받기 
   request.setCharacterEncoding("utf-8");
	String writer = request.getParameter("writer");
	String title = request.getParameter("title");
	String content = request.getParameter("content");

    int num  = Integer.parseInt(request.getParameter("num"));
    int cPage  = Integer.parseInt(request.getParameter("page"));
   
    //noticeda0객체 생성하고 
    NoticeDao dao = NoticeDao.getInstance();
  
    //dao에서 maxnum값이 있음. noticedao에서 , 수정할 객체 만들어서 
    NoticeDto dto = new NoticeDto(num,writer,title,content,null);
    
    //return 값이 제대로 되면 1이 넘겨진다. 
    int resultCount = dao.update(dto);
    if(resultCount == 1) { 
    	%>
    	<script>
    	<!--   -->
    	alert('글이 수정 되었습니다.');
    	location.href="view.jsp?num=<%=num%>&page=<%=cPage%>";
    	//새글을 쓰면 1페이지로 이동하기 때문에. 
    	
    	</script>
    	
    	<% 
    }else { 
    	%> 
    	
    	<script> 
    	
    	alert('에러');
    	history.back(-1);
    	</script>
    	<% 
    }
    //배열은 똑같은 자료형만 넣을 수 있음.
    //클래스는 변수하나로 다른 자료형을 넣을 수 있음. 

%>


