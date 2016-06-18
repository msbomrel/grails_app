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
<g:javascript library="jquery"/>

%{--<script>--}%
    %{--function askUserConfirmation(){--}%
        %{--if (confirm("Are you sureeee?")){--}%
            %{--console.log("here.....")--}%
            %{--window.location.href="/delete";--}%
            %{--window.location.href='<g:createLink controller="technician" action="delete"/>';--}%
            %{--location.href="${createLink(controller: 'technician', action: 'delete')}"--}%
        %{--}--}%
    %{--}--}%
%{--</script>--}%
<body>
<g:form action="searchSpecificTech" controller="technician">
    Search Technician for: <g:select name="specificTech" id="specificTech" from="${services}" optionKey="id" optionValue="type"/>
    <g:submitButton name="specificTech" value="Search"/>
</g:form>
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
            <td><g:link controller="technician" action="delete" params="[tech:technician.id]" onclick="return confirm('Are you sure you want to delete this item?');">DELETE</g:link></td>
        </tr>
    </g:each>
</table>

</body>
</html>