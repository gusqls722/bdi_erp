<%@page import="com.bdi.erp.common.result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<%
String tNo = request.getParameter("tNo");
String tPwd = request.getParameter("tPwd");
String tBirth = result.resulta(request.getParameter("tBirth"));
String tContent = request.getParameter("tContent");

Connection con = DBConnection.getCon();
String sql = "update Test set tPwd=?, tBirth=?, tContent=?";
sql += " where tNo=?";

PreparedStatement ps = con.prepareStatement(sql);

ps.setString(1, tPwd);
ps.setString(2, tBirth);
ps.setString(3, tContent);
ps.setString(4, tNo);
int cnt = ps.executeUpdate();
DBConnection.close();
ps.close();

if(cnt==1){
%>
<script>
	alert("수정이 완료되었습니다.")
	location.href="<%=rPath%>/views/Test/testList.jsp";
</script>
<%
}
%>
<body>

</body>
</html>