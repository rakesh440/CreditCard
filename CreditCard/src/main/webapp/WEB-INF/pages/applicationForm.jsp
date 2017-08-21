<%@include file="include.jsp"%>
<html>
<head>
<title>VISA Application Form</title>
<link href="<c:url value="/WEB-INF/css/global.css" />" rel="stylesheet">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker({
			changeMonth : true,
			changeYear : true,
			yearRange : "-100:+0"
		});
	});
</script>
<style type="text/css">
.resultText {
	font-size: 150%;
	color: #11828e;
	padding: 15px;
	text-align: center;
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

.big-checkbox {
	padding: 18px;
}

.big-checkbox:checked:after {
	font-size: 28px;
	left: 6px;
}

#div {
	height: 200px;
	width: 100px;
	position: absolute;
	top: 50%;
	left: 50%;
	margin-top: -100px;
	margin-left: -50px;
}

.resultText {
	font-size: 150%;
	color: #11828e;
	padding: 15px;
	text-align: center;
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

.error {
	color: #ff0000;
	font-weight: bold;
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
	padding-right: 15px;
}

tr.spaceUnder>td {
	padding-bottom: 2em;
}

.form-title {
	font-size: 150%;
	color: #11828e;
}

.textboxformat {
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
		<img src="<c:url value="/images/banner1.jpg" />" alt="" />
	</div>

	<div>
		<div class="example">
			<div class="heading">Visa Application Form</div>
		</div>
		<form:form commandName="visaApplication" method="post">
			<input type="hidden" value="applicationForm" name="_page" />
			<div class="example">
				<table class="center">
					<tr>
						<td class="fieldright">First Name</td>
						<td class="textboxformat"><form:input path="firstName" /></td>
						<td><form:errors path="firstName" class="error"/></td>
					</tr>
					<tr>
						<td class="fieldright">Last Name</td>
						<td class="textboxformat"><form:input path="lastName" /></td>
						<td><form:errors path="lastName" class="error"/></td>
					</tr>

					<tr>
						<td class="fieldright">Email</td>
						<td class="textboxformat"><form:input path="email" /></td>
						<td><form:errors path="email" class="error"/></td>
					</tr>
					<tr>
						<td class="fieldright">Gender</td>
						<td class="textboxformat"><span class="radioRight"><form:radiobutton
									path="gender" value="Male" />Male <form:radiobutton
									path="gender" value="Female" />Female</span></td>
						<td><form:errors path="gender" class="error" /></td>
					</tr>		
					<tr>
						<td class="fieldright">Date Of Birth</td>
						<td class="textboxformat"><form:input path="dob"
								id="datepicker" /></td>
								<td><form:errors path="dob" class="error"/></td>
					</tr>
					<tr>
						<td class="fieldright">Nationality</td>
						<td class="textboxformat"><form:input path="nationality" /></td>
						<td><form:errors path="nationality" class="error"/></td>
					</tr>
					<tr>
						<td class="fieldright">License Number</td>
						<td class="textboxformat"><form:input path="licenseNumber" /></td>
						<td><form:errors path="licenseNumber" class="error"/></td>
					</tr>
					<tr>
						<td class="fieldright">Address Line One</td>
						<td class="textboxformat"><form:input
								path="address.addressLineOne" /></td>
								<td><form:errors path="address.addressLineOne" class="error" /></td>
					</tr>
					<tr>
						<td class="fieldright">Address Line Two</td>
						<td class="textboxformat"><form:input
								path="address.addressLineTwo" /></td>
								<td><form:errors path="address.addressLineTwo" class="error"/></td>
					</tr>
					<tr>
						<td class="fieldright">City</td>
						<td class="textboxformat"><form:input path="address.city" /></td>
						<td><form:errors path="address.city" class="error"/></td>
					</tr>
					<tr>
						<td class="fieldright">State</td>
						<td class="textboxformat"><form:input path="address.state" /></td>
						<td><form:errors path="address.state" class="error"/></td>
					</tr>
					<tr>
						<td class="fieldright">ZipCode</td>
						<td class="textboxformat"><form:input path="address.zipcode" /></td>
						<td><form:errors path="address.zipcode" class="error"/></td>
						
					</tr>
					<tr class="spaceUnder">
						<td class="fieldright">Country</td>
						<td class="textboxformat"><form:input path="address.country" /></td>
						<td><form:errors path="address.country" class="error"/></td>
					</tr>
				</table>
			</div>
			<input class="myButtonRight" type="submit" value="Continue"
				name="target_continue" />
				<input class="myButtonLeft" type="submit" value="Home"
				name="target_home" />
		</form:form>
	</div>
</body>
</html>