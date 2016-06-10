<%--
  Created by IntelliJ IDEA.
  User: Ruby
  Date: 6/6/2016
  Time: 10:18 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<table>
    <tr>
        <th>Name</th>
        <th>Address</th>
        <th>Contact</th>
        <th>Email</th>
        <th>Experience</th>
        <th>Services</th>
    </tr>
    <g:each in="${tech}" var="technician">
        <tr>
            <td>${technician?.name}</td>
            <td>${technician?.address}</td>
            <td>${technician?.contact}</td>
            <td>${technician?.email}</td>
            <td>${technician?.experience}</td>
            <td>${technician?.services?.type}</td>
            <td><g:link controller="technician" action="edit" params="[tech:technician.id]">EDIT</g:link></td>
        </tr>
    </g:each>
</table>

</body>
</html>