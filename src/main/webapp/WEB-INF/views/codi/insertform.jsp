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
<form action="insert.do" method="post">
아이디	<input type="text" name="members_id" /><br />
카테고리	<input type="text" name="category" /><br />
이름		<input type="text" name="name" /><br />
작성자	<input type="text" name="writer" /><br />
사진명	<input type="text" name="image_name" /><br />
사진경로	<input type="text" name="image_src" /><br />
사진크기	<input type="text" name="image_size" /><br />
아우터번호	<input type="text" name="o_item_no" /> <br />
상의번호	<input type="text" name="t_item_no" /> <br />
하의번호	<input type="text" name="b_item_no" /> <br />
신발번호	<input type="text" name="s_item_no" /> <br />
가방번호	<input type="text" name="g_item_no" /> <br />
악세사리	<input type="text" name="a_item_no" /> <br />
정보 	<input type="text" name="info" /><br />
가격 	<input type="text" name="price" />
<button type="submit">전송</button>
</form>
</body>
</html>