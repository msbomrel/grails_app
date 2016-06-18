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
<h2>Enquiry Form</h2>
<g:hasErrors bean="${enq}">
    <div class="errors">
        <g:renderErrors bean="${enq}" as="list" />
    </div>
</g:hasErrors>

    <g:form controller="enquiry" action="add">
        Problem Details:<input type="text" name="details"> <br>
        Priority: <g:select name="priority" from="${['High', 'Normal', 'Low']}"
                  valueMessagePrefix="priority"/> <br>
        Service :
        <g:select name="service"
                  from="${grails_app.Service.list()}"
                  value="${ser?.id}"
                  optionKey="id"
                  optionValue="type"/> <br>
        Service Date: <g:datePicker name="serviceReqDate" value="${enq?.serviceReqDate}"/> <br>
        <g:submitButton value="Add Enquiry" name="add"/>
    </g:form>

</body>
</html>