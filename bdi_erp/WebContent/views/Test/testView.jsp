<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<%
int tNo = Integer.parseInt(request.getParameter("tNo"));
String tId = "";
String tPwd = "";
String tBirth = "";
String tContent = "";

Connection con = DBConnection.getCon();
String sql = "select tNo, tId, tPwd, tBirth, tContent from Test";
sql += " where tNo=?";

PreparedStatement ps = con.prepareStatement(sql);
ps.setInt(1, tNo);
ResultSet rs = ps.executeQuery();
if(rs.next()){
	tId = rs.getString("tId");
	tPwd = rs.getString("tPwd");
	tBirth = rs.getString("tBirth");
	tContent = rs.getString("tContent");
}
%>
<body>
<div class="container">
	<form action="<%=rPath%>/views/Test/testUpdateOk.jsp" onsubmit="return checkVal()">
		<fieldset>
			<table class="table table-bordered">
			<legend>T유저 정보 수정</legend>
					<tr>
						<th>T번호</th>
						<td><input type="hidden" name="tNo" value="<%=tNo%>"><%=tNo%></td>
					</tr>
					<tr>
						<th>T아이디</th>
						<td><input type="text" name="tId" value="<%=tId%>" disabled="disabled"></td>
					</tr>
					<tr>
						<th>T비밀번호</th>
						<td><input type="password" name="tPwd"></td>
					</tr>
					<tr>
						<th>T생년월일</th>
						<td><input type="date" name="tBirth" required><br><%=tBirth%></td>
					</tr>
					<tr>
						<th>T정보</th>
						<td><textarea name="tContent"><%=tContent%></textarea></td>
					</tr>
					<tr>
						<td colspan=2>
						<button>수정</button>
						<button type="button" onclick="deleteVal()">삭제</button>
						</td>
					</tr>
			</table>
		</fieldset>
	</form>
</div>

<script>

	function deleteVal(){
		if(confirm("삭제하시겠습니까?")){
			location.href="<%=rPath%>/views/Test/testDeleteOk.jsp?tNo=<%=tNo%>";
		}
	}
	
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