<!-- Registration form using servlet -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	margin: 0;
	padding: 0;
	background-color: #6abadeba;
	font-family: 'Arial';
}

.login {
	width: 382px;
	overflow: hidden;
	margin: auto;
	margin: 20 0 0 450px;
	padding: 80px;
	background: #23463f;
	border-radius: 15px;
}

a {
	width: 180px;
	overflow: hidden;
	margin-right: 300px;
	margin-top: 20px;
	margin-bottom: 20px;
	background: #abc;
	border-radius: 5px;
	padding: 25px;
}

h2 {
	text-align: center;
	color: #277582;
	padding: 20px;
}

label {
	color: #08ffd1;
	font-size: 17px;
}

#Uname {
	width: 300px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#Pass {
	width: 300px;
	height: 30px;
	border: none;
	border-radius: 3px;
	padding-left: 8px;
}

#log {
	width: 300px;
	height: 30px;
	border: none;
	border-radius: 17px;
	padding-left: 7px;
	color: blue;
}

span {
	color: white;
	font-size: 17px;
}

a {
	float: right;
	background-color: grey;
}
</style>
</head>
<body>
	<div class="login">
		<form action="HandlerServlet" method="post">  
			<label><b>First Name : </b> </label> <input type="text" name="fname"
				id="fname" required="required"> <br><br> <label><b>Last Name : </b><br> </label> <input
				type="text" name="lname" id="lname" required="required"> <br> <br>
				<label><b>User Name : </b> </label> <input type="text" name="username"
				id="username" required="required" placeholder="username"> <br><br>
				 <label><b>password: </b>
					 </label> <input type="Password" name="password" required="required" id="Pass"
				placeholder="Password"> <br> <br> <label><b>sex
					: </b> </label> <input type="radio" name="sex" value="M" />Male <input
				type="radio" name="sex" value="F" />Female <br> <br>
			<br> <label><b> Country: </b> </label> <input type="text"
				name="country" id="country"> <br> <br><label><b>
					City: </b> </label> <input type="text" name="city" id="city"> <br><br><label><b> phne number: </b> </label> <input type="text"
				name="phonenumber" id="phonenumber"> <br><br>
			<br> <label><b>nationality : </b> </label> <select
				name="nationality">
				<option value="Ethiopia">Ethiopian</option>
				<option value="kenya">kenya</option>
				<option value="sudan">sudan</option>
				<option value="Ethiopia">Indian</option>
				<option value="kenya">American</option>
				<option value="sudan">Egiyptian</option>
			</select> <br><br>
			 <label><b>Course
					Applied for :<br> </b> </label> <input type="checkbox" name="department"
				value="Engineering" />Engineering <input type="checkbox"
				name="department" value="Health scince" />Health scince <input
				type="checkbox" name="department" value="Social Scince" />Social
			Scince <br> <br> <br> <br> <input type="submit"
				name="log" id="log" value="Sign Up"> <br> <br>
		</form>
	</div>
</body>
</html>