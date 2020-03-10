<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title><spring:message code="app.title"/></title>


</head>
<body>
<h1><spring:message code="app.title"/></h1>
<h3><spring:message code="hello.message" arguments="${user.login}"/></h3>
</body>
</html>
