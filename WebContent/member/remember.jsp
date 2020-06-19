 <script>
	 $(function(){
    	// $("#saveNotive")  객체에.click이라는 이벤트를 달고 
      $("#saveNotive").click(function(e){  //callback메서드. 자동으로 호출됨.  click하면 click(function(){})click
          //a   e.preventDefault(); 기능은 href 속성에 있는 주소로 이동하는데 이런 기능을 제거한다는 의미 
    	  e.preventDefault();
    	  //안에 있는 function기능이 행동됨. 
    	 let writer = $("#writer").val //writer값이 있는지 없는지 확인.  writer값의 객체를 알려면 id값 알아야함. 
    	  // let writer = $("#writer").val wirter값 객체 만들기. 
    	  //falcy value - java script에서는 false라고 인식. 
    	  let writer = $("#title").val 
    	  let writer = $("#content").val 
    	  if(!writer){
    		  alert('작성자를 입력해주세요.');
    		  $("#writer").focus();
    		  return;
    		}
    	 if(!title){
   		  alert('제목을 입력해주세요.');
   		  $("#writer").focus();
   		  return;
   		}
    	 if(!content){
   		  alert('내용을 입력해주세요.');
   		  $("#writer").focus();
   		  return;
   		}
      f.submit();
    	  
      });
    });
    </script>
	
	
	
	
<%@ include file="../inc/footer.jsp"%>
