<%@ page contentType="text/html;charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box;}
</style>
<%@ include file="../inc/header.jsp" %>
<style>
.loader {
	  border: 16px solid #ff0000;
	  border-radius: 50%;
	  border-top: 16px solid #3498db;
	  width: 100px;
	  height: 100px;
	  -webkit-animation: spin 2s linear infinite; /* Safari */
	  animation: spin 2s linear infinite;
	}
	
	/* Safari */
	@-webkit-keyframes spin {
	  0% { -webkit-transform: rotate(0deg); }
	  100% { -webkit-transform: rotate(360deg); }
	}
	
	@keyframes spin {
	  0% { transform: rotate(0deg); }
	  100% { transform: rotate(360deg); }
	}	
</style>
<script>
//회원등록
function regist(){
	$("#loader").addClass("loader");
	var formData = new FormData($("form")[0]);
	$.ajax({
		url:"/admin/member/regist",
		data:formData,
		contentType:false,
		processData:false,
		type:"post",
		success:function(responseData){
			$("#loader").removeClass("loader");
			var json = JSON.parse(responseData);
			if(json.result==1){
				alert(json.msg);
				location.href="/admin/member/list";
			}else{
				alert(json.msg);
			}
		}
	});
}
</script>
</head>
<body>
	<%@ include file="../inc/top_nav.jsp" %>
	<div class="container">
	<div id="loader" style="margin:auto"></div>
	  <form>
	    <label for="fname">아이디</label>
	    <input type="text" name="user_id"">
	    <label for="lname">비밀번호</label>
	    <input type="password" name="password">
	    <label for="lname">이름</label>
	    <input type="text" name="name">
	    <label for="lname">연락처</label>
	    <input type="text" name="phone" placeholder="- 빼고 입력 해주세요">
	    <label for="lname">이메일아이디</label>
	    <input type="text" name="email_id">
	    <label for="lname">이메일서버</label>
	    <select name="email_server">
			<option value="gmail.com">gmail.com</option>
			<option value="daum.net">daum.net</option>
			<option value="naver.com">naver.com</option>
		</select>
	    <label for="lname">주소</label>
	    <input type="text" name="addr">
		<input type="file" name="repImg"><br>
	    <input type="button" value="회원등록" onClick="regist()">
	    <input type="button" value="목록보기" onClick="location.href='/admin/member/list'">
	  </form>
	</div>
</body>
</html>