<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main</title>
</head>
<body>

	<div>
		<jsp:include page='header.jsp'/>
	</div>
	
	<div>
		<jsp:include page='${page}.jsp'/>
	</div>
	
	<div>
		<jsp:include page='footer.jsp'/>
	</div>


</body>
</html>