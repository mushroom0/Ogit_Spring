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
			<th>배송지이름</th>
			<th>받는사람이름</th>
			<th>받는사람전화번호</th>
			<th>우편번호</th>
			<th>주소</th>
			<th>상세주소</th>
			<th>기본배송지여부</th>
			<th>등록일</th>
			<th>수정일</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="tmp" items="${list }">
		<tr>
			<td>${tmp.seq}</td>
			<td>${tmp.members_id }</a></td>
			<td>${tmp.name }</td>
			<td>${tmp.recipient_name }</td>
			<td>${tmp.recipient_phone }</td>
			<td>${tmp.zipcode }</td>
			<td>${tmp.address }</td>
			<td>${tmp.address_detail }</td>
			<td>${tmp.is_default }</td>
			<td>${tmp.regist_date }</td>
			<td>${tmp.update_date }</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>