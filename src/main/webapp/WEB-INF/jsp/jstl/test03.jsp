<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2>1.후보자 득표율</h2>
		
		<table class="table text-center">
			<thead>
				<tr>
					<th>기호</th>
					<th>득표수</th>
					<th>득표율</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="candidates" items="${candidates }" varStatus="status">  
				<tr>
					<td>${status.count }</td>
					<td><fmt:formatNumber value="${candidates }" /></td>
					<td><fmt:formatNumber value="${candidates  / 1000000}" type="percent"/> </td>
				</tr>
				</c:forEach>
			</tbody>
		
		</table>
	</div>
	
	<div class="container">
		<h2>2.카드 명세서</h2>
		<table class="table text-center">
			<thead>
				<tr>
					<th>사용처</th>
					<th>가격</th>
					<th>사용 날짜</th>
					<th>할부</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="cardBills" items="${cardBills}">  
				<tr>
					<td>${cardBills.store }</td>
					<td><fmt:formatNumber value="${cardBills.pay }" type="currency"/></td>
					<td><c:set var="dateTimeString" value="${cardBills.date}"/><fmt:formatDate value="${dateTimeString }" pattern="yyyy년 MM월 dd일" /></td>
					<td>${cardBills.installment }</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	
	
	
	
	
	
	
	
	
	
<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>

</body>
</html>