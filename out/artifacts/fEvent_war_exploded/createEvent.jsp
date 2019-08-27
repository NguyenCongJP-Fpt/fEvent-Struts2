<%--
  Created by IntelliJ IDEA.
  User: NguyenCongJP
  Date: 8/27/2019
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Create Event</title>
    <style>
        .errorMessage {
            color: red;
        }
    </style>
</head>
<body>
<s:form method="POST" action="store">


    <s:textfield type="date" name="newEvent.date" title="YYYY-MM-DD like 2013-01-21" label="When?"/>

    <s:textfield type="time" name="newEvent.time" label="Time"/>

    <s:textfield name="newEvent.planing" label=" What are you planing?"/>

    <s:textfield name="newEvent.address" label="Where?"/>

    <s:textfield name="newEvent.info" label="More info?"/>

    <s:submit value="Create Event" action="store"/>

</s:form>

</body>
</html>
