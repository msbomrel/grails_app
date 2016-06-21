<%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 6/21/16
  Time: 9:59 AM
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main"/>
    <title>Admin Page</title>
</head>

<body>
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
                <li class="active"><a href="#"> Admin Dashboard</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><g:link controller="service" action="index"> <span class="glyphicon glyphicon-btc">
                </span> Add Service</g:link></li>
                <li><g:link controller="technician" action="index"> <span class="glyphicon glyphicon-check">
                </span> Add Technician</g:link></li>
                <li><g:link controller="logout" action="index"> <span class="glyphicon glyphicon-log-in">
                </span> Logout</g:link></li>
            </ul>
        </div>
    </div>
</nav>
<div>

    <h1>
        Howdy  <sec:loggedInUserInfo field="username" />!!<br>
    </h1>
    <div>

        <table style= "width: 100%">
            <tr>
                <th>Name</th>
                <th>Problem Details</th>
                <th>Service Date</th>
                <th>Service</th>
                <th>Priority</th>
                <th>Status</th>
            </tr>
            <g:each in="${enq}" var="enquiry">
                <tr>
                    <td>${enquiry?.user?.getUsername()}</td>
                    <td>${enquiry?.details}</td>
                    <td>${enquiry?.serviceReqDate}</td>
                    <td>${enquiry?.service?.type}</td>
                    <td>${enquiry?.priority}</td>
                    <td>${enquiry?.status}</td>

                </tr>
            </g:each>
        </table>
    </div>

</div>
</body>
</html>