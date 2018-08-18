<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<body>
<%
int tNo = Integer.parseInt(request.getParameter("tNo"));

Connection con = DBConnection.getCon();
String sql = "delete from Test where tNo=?";
PreparedStatement ps = con.prepareStatement(sql);
ps.setInt(1, tNo);
ps.executeQuery();
DBConnection.close();
%>
<script>
alert("삭제되었습니다.");
location.href = "<%=rPath%>/views/Test/testList.jsp";
</script>
</body>
</html>