<%--
  Created by IntelliJ IDEA.
  User: Shreha
  Date: 6/8/2016
  Time: 12:23 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>User Page</title>
</head>

<body>
    %{--<g:form name="userForm" controller="user" id="userForm">--}%
        %{--<div class="text-field"><label>User Name:</label><g:textField name="username" value="${username}"></g:textField></div>--}%
        %{--<div class="pwd-field"><label>Password:</label><g:passwordField name="password" value="${password}"></g:passwordField></div>--}%
        %{--<div class="submit"><g:actionSubmit value="Submit" action="save"/></div>--}%
    %{--</g:form>--}%

<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">RepairyourGadgets</a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Dashboard</a></li>
                <li><g:link controller="Enquiry" action="index">Enquiry Form</g:link></li>
                <li><a href="#">Queries</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><g:link controller="logout" action="index"> <span class="glyphicon glyphicon-log-in"></span> Logout</g:link></li>
            </ul>
        </div>
    </div>
</nav>
<div>

    <h1>
        Howdy  <sec:loggedInUserInfo field="username" />!!<br>
</h1>
    <div>
        <p>
            Welcome to Repair Your PC.
            With the help of this application, you can post your queries and problems that you have faced with your laptops.<br>
            You will have to post your enquiry and you will be assigned a Technician that will be able to fulfill the type of service you require.

        </p>
    </div>

        <div>

        <table style= "width: 100%">
            <tr>
                <th>Service Type</th>
                <th>Status</th>
                <th>Priority</th>
                <th>Details</th>
                <th>Service Request Date</th>
            </tr>
            <g:each in="${enq}" var="enquiry">
                <tr>
                    <td>${enquiry?.service?.type}</td>
                    <td>${enquiry?.status}</td>
                    <td>${enquiry?.priority}</td>
                    <td>${enquiry?.details}</td>
                    <td>${enquiry?.serviceReqDate}</td>
                    %{--<td><g:link controller="technician" action="delete" params="[tech:technician.id]" onclick="return confirm('Are you sure you want to delete this item?');">DELETE</g:link></td>--}%
                </tr>
            </g:each>
        </table>
        </div>

</div>
</body>
</html>