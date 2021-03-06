<%@ page language="java" contentType="text/html; charset=UTF-8"
   %>
<%@ include file="../inc/header.jsp"%>
	<nav aria-label="breadcrumb ">
	  <ol class="breadcrumb justify-content-end">
	    <li class="breadcrumb-item "><a href="#">홈</a></li>
	    <li class="breadcrumb-item active">회원가입</li>
	  </ol>
	</nav>
	
    <div class="container">
    	<div class="row">
	        <div class="col-md-12">
	        	<h3>회원가입</h3>
	        	<form method="post" name="f" action="save.jsp">
				  <div class="form-group">
	                <input type="text" class="form-control" id="email" name="email" placeholder="Your Email *" value="" />
	              	<div class="invalid-feedback" id="errorEmail">
				       이메일을 입력하세요.
				    </div>
				    <div class="valid-feedback">
				        Looks good!
				    </div>
	              </div>
	              <div class="form-group">
	                <input type="password" class="form-control" id="pwd" name="pwd"  placeholder="Your Password *" value="" />
	              	<div class="invalid-feedback" id="errorPwd">
				    	비밀번호를 입력하세요.
				    </div>
				    <div class="valid-feedback">
				        Looks good!
				    </div>
	              </div>
	              <div class="form-group">
	                <input type="password" class="form-control" id="repwd" name="repwd"  placeholder="Your Re-Password *" value="" />
	              	<div class="invalid-feedback" id="errorRePwd">
				    	비밀번호를 입력하세요.
				    </div>
				    <div class="valid-feedback">
				        Looks good!
				    </div>
	              </div>
	              <div class="form-group">
	                <input type="text" class="form-control" id="name" name="name" placeholder="Your Name *" value="" />
	              	<div class="invalid-feedback" id="errorName">
				       이름을 입력하세요.
				    </div>
				    <div class="valid-feedback">
				        Looks good!
				    </div>
	              </div>
				</form>
				<div class="text-right" style="margin-bottom : 20px;">
					<a href="" id="saveCustomer" class="btn btn-outline-danger">회원가입</a>
					<a href="login.jsp" class="btn btn-outline-success">로그인</a>
				</div>
	        </div>
        </div>
    </div>
	<script>
	$(function(){
		const email = $("#email");
		const pwd = $("#pwd");
		const repwd = $("#repwd");
		const name = $("#name");
		
		let success = false;
		$("#saveCustomer").click(function(e){
			e.preventDefault();
			if(!email.val()){
				$("#errorEmail").text('이메일을 입력하세요.');
				email.addClass("is-invalid");
				email.focus();
				success = false
			}
			if(validateEmail(email.val())){
				email.addClass("is-valid");
				success = true;
			}else{
				$("#errorEmail").text('이메일 주소 형식이 맞지 않습니다.');
				email.addClass("is-invalid");
				email.focus();
				success = false;
			}
			if(!pwd.val()){
				pwd.addClass("is-invalid");
				$("#errorPwd").text('비밀번호를 입력하세요.');
				pwd.focus();
				success = false;
			}
			if(pwd.val().length >= 8 && pwd.val().length <=12){
				pwd.addClass("is-valid");
				success = true;
			}else{
				$("#errorPwd").text('비밀번호는 8-12자리 이어야 합니다.');
				pwd.addClass("is-invalid");
				pwd.focus();
				success = false;
			}
			if(success){
				f.submit();
			}
		});
		
		email.keyup(function(e){
			console.log('key down : '+email.val());
		});
		
		email.keyup(function(e){
			console.log('key down : '+email.val());
			email.removeClass("is-invalid");
			if(!email.val()){ //값이 비어있으면
				email.removeClass("is-invalid");
				email.removeClass("is-valid");
				return;
			} //아무것도 없을때 초기화 작업
			
			if(validateEmail(email.val())){
			   //이메일 형식 맞으면 ajax콜해서 data 연결 실패했는지 성공했는지 확인
			   $.ajax({ // $.ajax({ 기본형식 
				   type : 'get',
				   url : 'check_email_ajax.jsp?email='+email.val(),  //local에 jsp
				   dataType : 'json',
				   error : function(){
					   console.log('error');
				   },
				   success : function(json){
					   //성공하면 true
					   if(json.result=="ok"){
						   email.addClass("is-valid");
					   }else{
							$("#errorEmail").text('이미 등록된 이메일 입니다.');
							email.addClass("is-invalid");
					   }
				   }
				  });
				
			}else{
				email.removeClass("is-valid");
				$("#errorEmail").text('이메일 주소 형식이 맞지 않습니다.');
				email.addClass("is-invalid"); //맞지 않으면 실패 
				
			}
			
		});
		pwd.keyup(function(e){
			pwd.removeClass("is-invalid");
			if(!pwd.val()){
				pwd.removeClass("is-invalid");
				pwd.removeClass("is-valid");
				return;
			}
			if(pwd.val().length >= 8 && pwd.val().length <=12){
				pwd.addClass("is-valid");
			}else{
				pwd.removeClass("is-valid");
				$("#errorPwd").text('비밀번호는 8-12자리 이어야 합니다.');
				pwd.addClass("is-invalid");
			}
			
		});
		function validateEmail(email) {
			var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
			return re.test(email);
		}
	});
	</script>
<%@ include file="../inc/footer.jsp"%>


