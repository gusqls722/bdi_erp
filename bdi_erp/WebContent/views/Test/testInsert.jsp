<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<style>
	th,td{
		padding:20px;
		text-align:center;
		
	}
</style>
<body>
<div class="container">
	<form action="<%=rPath%>/views/Test/testInsertOk.jsp" onsubmit="return checkVal()">
		<fieldset>
			<table class="table-bordered">
			<legend>T유저 등록</legend>
					<tr>
						<th>T아이디</th>
						<td><input type="text" name="tId"></td>
					</tr>
					<tr>
						<th>T비밀번호</th>
						<td><input type="password" name="tPwd"></td>
					</tr>
					<tr>
						<th>T생년월일</th>
						<td><input type="date" name="tBirth" required></td>
					</tr>
					<tr>
						<th>T정보</th>
						<td><textarea name="tContent"></textarea></td>
					</tr>
					<tr>
						<td colspan=2>
						<button>등록</button>
						</td>
					</tr>
			</table>
		</fieldset>
	</form>
</div>

<script>
	function checkVal(){
		var inputs = document.querySelectorAll('input');
		for(var i=0;i<inputs.length;i++){
			if(inputs[i].type != "date"){
				if(inputs[i].value.length>=100){
					alert(inputs[i] +"는 100자리 까지 입력가능합니다.");
					inputs[i].focus();
					return false;
				}else if(inputs[i].value.length<1){
					alert("값을 입력해주세요");
					inputs[i].focus();
					return false;
				}
			}
		}
		return true;
	}
</script>
</body>
</html>