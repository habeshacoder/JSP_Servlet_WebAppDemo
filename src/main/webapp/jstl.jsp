<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="l" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<l:out value="first message from jstl"></l:out>
	<l:set var="name" value="the variable value of ths name"></l:set>
	<l:set var="salary" value="2300"></l:set>
	<%-- <l:if test="${salary>1000 }">
<p><l:out value="salary is less than 1000"/>
</l:if>
<l:if test="${salary>1000}">
<p><l:out value="salary is greater than 1000"/>
</l:if> --%>
	<l:choose>
		<l:when test="${salary<1000 }">
			<p>salary less than 1000
		</l:when>
		<l:when test="${salary>1000 }">
			<p>salary greater than 1000</p>
		</l:when>
	</l:choose>
</body>
</html>