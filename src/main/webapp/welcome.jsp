<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
</head>

<body>
	<div class="col-4 mx-auto">
		<%
		String username = (String) session.getAttribute("username");
		%>
		<h2 class="mx-auto">
			You are logged in as :
			<%=username%>
		</h2>
		<h1 class="mx-auto">
			<a href="employeeReimbursements.jsp">View My Reimbursement Requests</a>
		</h1>
		<h1 class="mx-auto">
			<a href="reimbursementRequest.jsp">Submit a New Reimbursement Request</a>
		</h1>
	</div>

</body>
</html>