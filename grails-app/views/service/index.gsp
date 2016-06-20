<%--
  Created by IntelliJ IDEA.
  User: Ruby
  Date: 5/23/2016
  Time: 10:44 AM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name='layout' content='main' />
</head>

<body>
<div class="container">
    <div  style="margin: 50px 203px 150px 350px;">
        <h3 style="margin-left: 100px;">Service</h3>

        <g:form action="add" controller="service" class="form-inline">
            Type: <input type="text" name="type" id="service-type" class="form-control">
            <input type="submit" value="Add Service" id="service-submit" class="btn btn-primary">
        </g:form>
    </div>
</div>


</body>
</html>