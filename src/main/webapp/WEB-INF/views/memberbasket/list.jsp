<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table>
	<thead>
		<tr>
			<th>식별번호</th>
			<th>회원식별번호</th>
			<th>상품옵션식별번호</th>
			<th>상품식별번호</th>
			<th>상품명</th>
			<th>수량</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="tmp" items="${list }">
		<tr>
			<td>${tmp.seq }</td>
			<td>${tmp.members_id}</td>
			<td>${tmp.product_detail_seq }</td>
			<td>${tmp.product_seq }</td>
			<td>${tmp.product_name }</td>
			<td>${tmp.bascket_count }</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>