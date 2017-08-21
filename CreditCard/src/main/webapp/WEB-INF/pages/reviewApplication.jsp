<%@include file="include.jsp"%>

<%-- <jsp:useBean id="visaApplication" class="com.accenture.visa.backing.bean.VisaApplication"/>
<jsp:setProperty name="visaApplication" property="*" /> --%>

<html>
<head>
<title>Review Application</title>

<style type="text/css">
.resultText {
	display: inline-block;
	float: left;
	clear: left;
	width: 180px;
	text-align: right;
	color: #11828e;
	text-align: left;
}

.reviewText {
	color: #11828e;
}

.radioRight {
	display: inline-block;
	float: left;
	clear: left;
	width: 180px;
	text-align: right;
	color: #11828e;
	text-align: left;
	padding-right: 15px;
}

.rightPage {
	float: right;
	width: 70%;
}

.heading {
	font-size: 150%;
	color: #11828e;
	padding: 15px;
	text-align: center;
}

div.example {
	background-color: #FFFFFF;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
	color: #000000;
	line-height: 1.15em;
	margin-bottom: 1px;
	margin-top: 1px;
	padding: 15px;
	width: auto;
	word-wrap: break-word;
}

.fieldright {
	display: inline-block;
	float: left;
	clear: left;
	width: 180px;
	text-align: right;
	color: #11828e;
	text-align: right;
	padding-right: 15px;
}

tr.spaceUnder>td {
	padding-bottom: 2em;
}

.form-title {
	font-size: 150%;
	color: #11828e;
}

.resultText {
	float: left;
}

table.center {
	margin-left: auto;
	margin-right: auto;
}

center {
	margin-left: auto;
	margin-right: auto;
}

body1 {
	background-color: #b6b5b5;
	margin: 0 auto;
	font-size: 13px;
	font-family: 'Arial', sans-serif;
	font-weight: 500;
	color: #536875;
}

input[type='text'] {
	width: 150px;
	height: 20px;
	border: 1px solid #cccccc;
}

.myButtonRight {
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
	float: right;
}

.myButtonLeft {
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
	float: left;
}

.myButtonRight:hover {
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

.myButtonLeft:hover {
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

.myButton:active {
	position: relative;
	top: 1px;
}
</style>

</head>

<body>

	<div class="example">
		<img src="<c:url value="/resources/images/banner1.jpg" />" alt="" />
	</div>

	<div>
		<div class="example">
			<div class="heading">Review Application</div>
		</div>
		<div class="example">
			<table class="center">
				<tr>
					<td class="fieldright">First Name :</td>
					<td class="reviewText"><c:out
							value="${visaApplication.firstName}" /></td>
				</tr>
				<tr>
					<td class="fieldright">Last Name :</td>
					<td class="reviewText"><c:out
							value="${visaApplication.lastName}" /></td>
				</tr>

				<tr>
					<td class="fieldright">Email :</td>
					<td class="reviewText"><c:out value="${visaApplication.email}" /></td>
				</tr>
				<tr>
					<td class="fieldright">Gender :</td>
					<td class="reviewText"><c:out
							value="${visaApplication.gender}" /></td>

				</tr>
				<tr>
					<td class="fieldright">Date Of Birth :</td>
					<td class="reviewText"><c:out value="${visaApplication.dob}" /></td>

				</tr>
				<tr>
					<td class="fieldright">Nationality :</td>
					<td class="reviewText"><c:out
							value="${visaApplication.nationality}" /></td>
				</tr>
				<tr>
					<td class="fieldright">License Number :</td>
					<td class="reviewText"><c:out
							value="${visaApplication.licenseNumber}" /></td>
				</tr>
				<tr>
					<td class="fieldright">Address Line One :</td>
					<td class="reviewText"><c:out
							value="${visaApplication.address.addressLineOne}" /></td>
				</tr>
				<tr>
					<td class="fieldright">Address Line Two :</td>
					<td class="reviewText"><c:out
							value="${visaApplication.address.addressLineTwo}" /></td>
				</tr>
				<tr>
					<td class="fieldright">City :</td>
					<td class="reviewText"><c:out
							value="${visaApplication.address.city}" /></td>
				</tr>
				<tr>
					<td class="fieldright">State :</td>
					<td class="reviewText"><c:out
							value="${visaApplication.address.state}" /></td>
				</tr>
				<tr>
					<td class="fieldright">ZipCode :</td>
					<td class="reviewText"><c:out
							value="${visaApplication.address.zipcode}" /></td>
				</tr>
				<tr class="spaceUnder">
					<td class="fieldright">Country :</td>
					<td class="reviewText"><c:out
							value="${visaApplication.address.country}" /></td>
				</tr>
			</table>
			<form:form commandName="visaApplication" method="post">
				<input type="hidden" value="reviewApplication" name="_page" />
				<input class="myButtonLeft" type="submit" value="Back"
					name="target_back" />
				<input class="myButtonRight" type="submit" value="Submit"
					name="target_submit" />
			</form:form>
		</div>
	</div>
</body>
</html>