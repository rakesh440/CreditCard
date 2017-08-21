<%@include file="include.jsp"%>

<html>
<head>
<style type="text/css">

.resultText{
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

.myButtonCenter:hover {
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffab23
		), color-stop(1, #ffec64) );
	background: -moz-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background: -webkit-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background: -o-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background: -ms-linear-gradient(top, #ffab23 5%, #ffec64 100%);
	background: linear-gradient(to bottom, #ffab23 5%, #ffec64 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffab23',
		endColorstr='#ffec64', GradientType=0 );
	background-color: #ffab23;
}
.myButtonCenter {
	-moz-box-shadow: 0px 1px 0px 0px #fff6af;
	-webkit-box-shadow: 0px 1px 0px 0px #fff6af;
	box-shadow: 0px 1px 0px 0px #fff6af;
	background: -webkit-gradient(linear, left top, left bottom, color-stop(0.05, #ffec64
		), color-stop(1, #ffab23) );
	background: -moz-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background: -webkit-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background: -o-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background: -ms-linear-gradient(top, #ffec64 5%, #ffab23 100%);
	background: linear-gradient(to bottom, #ffec64 5%, #ffab23 100%);
	filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffec64',
		endColorstr='#ffab23', GradientType=0 );
	background-color: #ffec64;
	-moz-border-radius: 6px;
	-webkit-border-radius: 6px;
	border-radius: 6px;
	border: 1px solid #ffaa22;
	cursor: pointer;
	color: #333333;
	font-family: Arial;
	font-size: 15px;
	font-weight: bold;
	padding: 6px 24px;
	text-decoration: none;
	text-shadow: 0px 1px 0px #ffee66;
	display: inline;
	float:right;
}

</style>
</head>
<body>
	<div class="example">
		<img src="<c:url value="/resources/images/banner1.jpg" />" alt="" />
	</div>

	<div>
		<div class="example">
			<div class="heading">Result Of Application</div>
		</div>
		<div class="resultText">${status}</div>
		<a href="home.htm"><button class="myButtonCenter" type="button">Home</button></a>
	</div>
</body>
</html>