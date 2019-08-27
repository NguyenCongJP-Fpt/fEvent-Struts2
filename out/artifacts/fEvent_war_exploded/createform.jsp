<%--
  Created by IntelliJ IDEA.
  User: NguyenCongJP
  Date: 8/24/2019
  Time: 7:27 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Create Event</title>
</head>
<body>
<h1>Create Event form</h1>
<s:form action="create">
    When? <s:textfield name="newEvent.date"/><br>
    What are you planing? <s:textfield name="newEvent.planing"/><br>
    Where? <s:textfield name="newEvent.address"/><br>
    More Info? <s:textfield name="newEvent.info"/><br>
    <s:submit value="Create Event"/>
</s:form>
</body>
</html>
