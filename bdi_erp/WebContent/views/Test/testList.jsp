<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.bdi.erp.common.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/views/common/common.jsp"%>
<style>
	tr, th { text-align:center;}
</style>
<body>
<div class="container">
	<h4>테스트 리스트</h4>
	<table class="table table-bordered table-hover">
		<thead>
			<tr>
				<th>T번호</th>
				<th>T아이디</th>
				<th>T생년월일</th>
				<th>T정보</th>
			</tr>
		</thead>
		
		<tbody>
		<%
			Connection con = DBConnection.getCon();
			String sql = "select tNo, tId, tBirth, tContent from Test";
			PreparedStatement ps = con.prepareStatement(sql);
			ResultSet rs = ps.executeQuery();
			while(rs.next()){
		%>
			<tr>
				<td>
				<a href="<%=rPath%>/views/Test/testView.jsp?tNo=<%=rs.getString("tNo")%>">
				<%=rs.getString("tNo")%>
				</a>
				</td>
				<td><%=rs.getString("tId")%></td>
				<td><%=rs.getString("tBirth")%></td>
				<td><%=rs.getString("tContent")%></td>
			</tr>
		<%
			}
		%>
		</tbody>
	</table>
</div>
</body>
</html>