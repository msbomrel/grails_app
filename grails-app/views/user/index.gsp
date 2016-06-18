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
                <li><a href="#">Enquiry Form</a></li>
                <li><a href="#">Queries</a></li>
                <li><a href="#">Contact Us</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="grails.plugin.springsecurity.LogoutController"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
            </ul>
        </div>
    </div>
</nav>
<div>
    <h1>
        Howdy  <sec:loggedInUserInfo field="username" />!!<br>

    </h1>
</div>
</body>
</html>