<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ page import= "com.javaex.vo.GuestVo" %>
<%@ page import= "com.javaex.dao.GuestDao" %>

<%
	int no = Integer.parseInt(request.getParameter("no"));
	
	GuestDao guestDao = new GuestDao();
	GuestVo guestVo = guestDao.getGuest(no); //아이디를 주면 아이디에 해당하는 person정보를 가져온다
	

%>




<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>delete</title>
</head>
<body>
	<form>
		
		비밀번호 : <input type="text" name="password">
		<button type="submit">확인</button>
		<a href="./addList.jsp">메인으로 돌아가기</a>
	
	</form>

</body>
</html>