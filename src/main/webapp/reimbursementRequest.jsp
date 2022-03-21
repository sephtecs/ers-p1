<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="styles.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>
<script type="text/javascript">
function validateSignUpForm(){
	var uname1 = document.getElementById("username").value;
	var uname2 = document.signupform.username.value;
	var pwd = document.forms[0].elements[1].value;
	var confirmpwd = document.forms[0].elements[2].value;

	var checked1 = document.getElementById('email').checked
	var checked2 = document.getElementById('sms').checked
	var checked3 = document.getElementById('courier').checked

	var qual = document.signupform.qualification.options.selectedIndex;

	var radio = new Array();
	for (i = 3; i <= 5; i++) {
		radio[i] = document.forms[0].elements[i].checked
	}
	
	if (uname1.length == 0) {
		alert("Please enter username");
		return false;
	} else if (pwd.length == 0) {
		alert("Please enter password");
		return false;
	} else if (pwd != confirmpwd) {
		alert("Password and confirm password does not match");
		return false;
	}
	else if (pwd.length < 6 || pwd.length > 12) {
		alert("Password length must be between 6-12")
		return false;
	}
	else if (radio[0] == 0 && radio[1] == 0 && radio[2] == 0) {
		alert("Please select a gender");
		return false;
	} else if (!checked1 && !checked2 && !checked3) {
		alert("Please Pick a Notification");
		return false;
	} else if (qual == 0) {
		alert("Please select a qualification");
		return false;
	}
}

function addInput() {
	var mainDiv = document.getElementById('myDiv1');
	var marriedButton = document.getElementById('marriedButton');

	var newTextBox = document.createElement('input');
	newTextBox.type = 'text';
	newTextBox.setAttribute('id', 'spousename');

	marriedButton.innerText ="Spouse Name : "
	mainDiv.append(newTextBox);

}
</script>
<body>
	<form class="form-style" action="SignUpController"
		onsubmit="return validateSignUpForm()" name="signupform" method="post">
		<table cellspacing="20" cellpadding="20" bgcolor="cyan">
			<tr>
				<td><label>Date: </label></td>
				<td><input type="date" name="date" id="date"></td>
			</tr>

			<tr>
				<td><label> Type: </label></td>
				<td><select name="type" id="type">
						<option>--select --</option>
						<option>Travel</option>
						<option>Medical</option>
						<option>Food</option>
				</select></td>
			</tr>

			<tr>
				<td><label>Description: </label></td>
				<td><input rows="4" cols="60" type="text" name="description" id="description"></td>
			</tr>

			<tr>
				<td><label>Total Amount: </label></td>
				<td><input type="number" name="totalAmount" id="totalAmount"></td>
			</tr>

			<tr>
				<td><input type="submit" value="SignUp"></td>
				<td><input type="reset" value="Clear"></td>
			</tr>

		</table>
	</form>
</body>
</html>
