<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="<%=request.getContextPath() %>" />
<%-- <c:set var="path1" value="${pageContext.request.contextPath }" />   --%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>회원 가입</title>
  <jsp:include page="/head.jsp" />
</head>
<body>
  	<jsp:include page="${path }/header.jsp" />
<div class="container" id="content">
	<h2 class="title">회원 가입</h2>
	<form name="frm1" id="frm1" action="AddUser.do" method="post" onsubmit="return joinCheck(this)">
		<table class="table">
			<tbody>
				<tr>
					<th>아이디</th>
					<td>
					<div class="form-row">
							<input type="text" name="cusId" id="cusId" placeholder="아이디 입력" class="form-control" autofocus required />
							<input type="button" class="btn btn-primary" value="아이디 중복 확인" onclick="idCheck()">
							<input type="hidden" name="idck" id="idck" value="no">
					</div>
					</td>
				</tr>
				<tr>
				    <th>비밀번호</th>
				    <td>
				        <input type="password" id="cusPw" name="cusPw" class="form-control" placeholder="비밀번호 입력" maxlength="20" required>
				    </td>
				</tr>
				<tr>
				    <th>비밀번호 확인</th>
				    <td><input type="password" id="cusPw2" name="cusPw2" class="form-control" placeholder="비밀번호 확인" required></td>
				</tr>
				<tr>
					<th>이름</th>
					<td><input type="text" id="cusName" name="cusName" class="form-control" placeholder="이름을(를) 입력" required></td>
				</tr>
				<tr>
				    <th>이메일</th>
				    <td>
				        <input type="email" id="email" name="email" class="in_dt" placeholder="이메일 입력">
				    </td>
				</tr>
				<tr>
					<th>연락처</th>
					<td><input type="text" id="tel" name="tel" class="form-control" placeholder="000-0000-0000"></td>
				</tr>
			</tbody>
		</table>
		<div class="btn-group">
			<input type="submit" name="submit-btn" class="btn btn-info" value="회원가입">
			<input type="reset" name="reset-btn" class="btn btn-info" value="취소">
		</div>
	</form>	
	<script>
	function idCheck(){
		var cusId = document.frm1.cusId.value;
		var win = window.open("idCheck.jsp?cusId="+cusId,"id 중복 체크", "width=500, height=200");
	}
	function joinCheck(f){
		if(f.cusPw.value!=f.cusPw2.value){
			alert("비밀번호와 비밀번호 확인이 서로 다릅니다.");
			f.cusPw.focus();
			return false;
		}
		if(f.idck.value!="yes"){
			alert("아이디 중복 체크를 하지 않으셨습니다.");
			return false;
		}
	}
	</script>
</div>
  <jsp:include page="../footer.jsp"></jsp:include>
  </body>
</html>