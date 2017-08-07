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
			<th>코디식별번호</th>
			<th>회원식별번호</th>
			<th>코디카테고리</th>
			<th>코디이름</th>
			<th>작성자닉네임</th>
			<th>파일명</th>
			<th>파일경로</th>
			<th>파일크기</th>
			<th>아우터상품번호</th>
			<th>상의상품번호</th>
			<th>하의상품번호</th>
			<th>신발상품번호</th>
			<th>가방상품번호</th>
			<th>악세사리상품번호</th>
			<th>코디설명</th>
			<th>코디가격</th>
			<th>좋아요</th>
			<th>코디등록일</th>
			<th>코디삭제일</th>
		</tr>
	</thead>
	<tbody>
	<c:forEach var="tmp" items="${list }">
		<tr>
			<td>${tmp.seq }</td>
			<td>${tmp.members_id}</td>
			<td>${tmp.category}</td>
			<td>${tmp.name }</td>
			<td>${tmp.writer }</td>
			<td>${tmp.image_name }</td>
			<td>${tmp.image_src}</td>
			<td>${tmp.image_size}</td>
			<td>${tmp.o_item_no}</td>
			<td>${tmp.t_item_no}</td>
			<td>${tmp.b_item_no}</td>
			<td>${tmp.s_item_no}</td>
			<td>${tmp.g_item_no}</td>
			<td>${tmp.a_item_no}</td>
			<td>${tmp.info}</td>
			<td>${tmp.price}</td>	
			<td>${tmp.liked}</td>
			<td>${tmp.regist_date}</td>
			<td>${tmp.delete_date}</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>