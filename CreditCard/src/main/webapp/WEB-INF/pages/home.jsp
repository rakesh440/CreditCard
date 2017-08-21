<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="../css/main.css" rel="stylesheet" type="text/css" />
<style type="text/css">
.resultText {
	font-size: 150%;
	color: #11828e;
	padding: 15px;
	text-align: center;
}

.heading {
	font-size: 150%;
	color: #11828e;
	padding: 15px;
	text-align: center;
}

div.example {
	background-color: #f1f1f1;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
	color: #000000;
	line-height: 1.15em;
	margin-bottom: 12px;
	margin-top: 12px;
	padding: 15px;
	width: auto;
	word-wrap: break-word;
}
</style>
</head>
<body>
	<div class="example">
		<img src="<c:url value="/resources/images/banner1.jpg" />" alt="" />
	</div>
	<div class="example">
		<div class="heading">Welcome to Visa online application</div>
	</div>
	<c:url value="/getVisaApplicationForm" var="guestBookLink" />
	<div class="resultText">
		<a href="${guestBookLink}">Get Visa Applicatiom</a>
	</div>
</body>
</html>