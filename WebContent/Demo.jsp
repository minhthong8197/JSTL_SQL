<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:setDataSource driver="com.mysql.jdbc.Driver"
	url="jdbc:mysql://localhost:3306/test" user="minhthong8197"
	password="ritokifi" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<sql:query var="ketquaquery" sql="select * from test.sinhvien"></sql:query>
	<table border="1">

		<tr>
			<c:set var="_1dong" value="${ketquaquery.rows[0]}"></c:set>
			<c:forEach items="${_1dong}" var="giatritrongdong">
				<td><b>${giatritrongdong.key}</b></td>
			</c:forEach>
		</tr>

		<c:forEach items="${ketquaquery.rows}" var="cacdong">
			<tr>
				<c:forEach items="${cacdong}" var="cacgiatri">
					<td>${cacgiatri.value}</td>
				</c:forEach>
			</tr>
		</c:forEach>
		
	</table>
</body>
</html>