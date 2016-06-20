<%--
  Created by IntelliJ IDEA.
  User: mohan
  Date: 6/9/16
  Time: 7:54 AM
--%>

<%@ page import="grails_app.Service" contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main"/>
</head>

<body>
<div class="container">
    <h2>Enquiry Form</h2>
    <g:hasErrors bean="${enq}">
        <div class="errors">
            <g:renderErrors bean="${enq}" as="list" />
        </div>
    </g:hasErrors>

    <g:form controller="enquiry" action="add">
        <label>Problem Details</label><input type="text" name="details" class="form-control">
        <label>Priority</label> <g:select name="priority" from="${['High', 'Normal', 'Low']}"
                                          class="form-control"   valueMessagePrefix="priority"/>
        <label>Service</label>
        <g:select name="service"
                  from="${grails_app.Service.list()}"
                  value="${ser?.id}"
                  optionKey="id" class="form-control"
                  optionValue="type"/> <br>
        <label>Service Date</label> <g:datePicker name="serviceReqDate" value="${enq?.serviceReqDate}" class="form-control"/> <br>
        <g:submitButton value="Add Enquiry" name="add" class="btn btn-primary"/>
    </g:form>
    <br>
    <br>
    <br>
</div>
</body>
</html>