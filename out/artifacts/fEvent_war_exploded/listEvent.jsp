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
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>List Event</title>
</head>
<body>
<h1>List Event</h1>


<table class="table">
    <s:iterator value="eventList">
        <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">When?</th>
            <th scope="col">Time</th>
            <th scope="col">Planing</th>
            <th scope="col">Address</th>
            <th scope="col">Infomation</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <th scope="row"><s:property value="id"/></th>
            <th scope="row"><s:property value="date"/></th>
            <th scope="row"><s:property value="time"/></th>
            <th scope="row"><s:property value="planing"/></th>
            <th scope="row"><s:property value="address"/></th>
            <th scope="row"><s:property value="info"/></th>
        </tr>

        <div>
            <s:form action="edit">
                <s:textfield name="newEvent.id" value="%{id}" type="hidden"/>
                <s:textfield name="newEvent.date" value="%{date}" type="hidden"/>
                <s:textfield name="newEvent.time" value="%{time}" type="hidden"/>
                <s:textfield name="newEvent.address" value="%{address}" type="hidden"/>
                <s:textfield name="newEvent.planing" value="%{planing}" type="hidden"/>
                <s:textfield name="newEvent.info" value="%{info}" type="hidden"/>
                <s:submit action="edit" value="Edit"/>
            </s:form>

        </div>
        <div>
            <s:form action="delete">
                <s:textfield name="newEvent.id" value="%{id}" type="hidden"/>
                <s:textfield name="newEvent.date" value="%{date}" type="hidden"/>
                <s:textfield name="newEvent.time" value="%{time}" type="hidden"/>
                <s:textfield name="newEvent.address" value="%{address}" type="hidden"/>
                <s:textfield name="newEvent.planing" value="%{planing}" type="hidden"/>
                <s:textfield name="newEvent.info" value="%{info}" type="hidden"/>
                <s:submit action="delete" value="Delete"/>
            </s:form>

        </div>
        </tbody>
    </s:iterator>
</table>
</body>
</html>
