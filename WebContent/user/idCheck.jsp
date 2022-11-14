<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${request.getContextPath() }" />
<jsp:useBean id="b" scope="request" class="kr.go.jeonju.dto.UserDTO"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="wrap">
	<h3>아이디 중복 확인</h3>
	<form action="<%=request.getContextPath()%>/IdCheckCtrl" method="post" onsubmit="return invalidCheck(this)">
		<label for="cusId">아이디</label>
		<input type="text" name="cusId" id="cusId" placeholder="아이디 입력" value="${b.id }" />
		<input type="submit" value="중복확인">
	</form>
	<script>
	function invalidCheck(f) {
		var cusId = f.cusId.value;
		cusId = cusId.trim();
			//여기서 아이디 글자수 제한걸기
		if(cusId.length<5 || cusId.length>16){
			alert("아이디는 5~16자여야 합니다.")
			return false;
		}
	}
	</script>
</div>
</body>
</html>