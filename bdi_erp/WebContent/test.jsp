<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
</style>
</head>
<body>
<div>
	<div>회원가입</div>
		<form action="/views/user/userList.jsp">
			ID : <input type="text" name="id"><br>
			PASSWORD : <input type="password" name="pwd"><br>
			Email : <input type="text" name="email"><br>
			성별 : <select name="trnas">
				<option value="m">남</option>
				<option value="f">여</option>
			</select><br>
			<button>회원가입</button>
		</form>
</div>
</body>
</html>