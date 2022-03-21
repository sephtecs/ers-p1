<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<link type="text/css" rel="stylesheet" href="styles.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<script type="text/javascript">
	function validate() {
		var uname = document.getElementById("username").value;
		var pwd = document.getElementById("password").value;
		if (uname.length == 0) {
			alert("Please enter username")
			return false;
		} else if (pwd.length == 0) {
			alert("Please enter password")
			return false;
		}
		else if (pwd.length < 6 || pwd.length > 12) {
			alert("Password length must be between 6-12")
			return false;
		}
	}
</script>
</head>
<body>
	<div class="col-4 mx-auto">
		<!-- 	<h1>Login Page</h1>
		<hr /> -->
		<h2 class="notes">Welcome to the ERS Login page!</h2>
		<form class="form-style" action="LoginController"
			onsubmit="return validate()" method="post">
			<table>
				<tr>
					<td><label> Username: </label></td>
					<td><input type="text" size="31" name="username" id="username"
						placeholder="please enter username"></td>
				</tr>
				<tr>
					<td><label> Password: </label></td>
					<td><input type="password" name="password" id="password">
						<input type="submit" value="Sign in" id="btnSubmit"></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>