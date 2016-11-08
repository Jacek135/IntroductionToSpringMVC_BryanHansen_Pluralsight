<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html>
<html>
<head>
    <title>Attendee Page</title>
    <style type="text/css">

        .error{
            color: #ff0000;
        }

        .errorblock{
            color: #000;
            background-color: #ffEEEE;
            border: 3px solid #ff0000;
            padding: 8px;
            margin: 16px;
        }

    </style>
</head>
<body>
<a href=?language=en></href>English</a>
<br />
<a href=?language=pl></href>Polish</a>


<form:form commandName="attendee">
    <form:errors path="*" cssClass="errorblock" element="div"/>
    <label for="textinput1"><spring:message code="attendee.name"/>: </label>
    <form:input path="name" cssErrorClass="error" />
    <br/>
    <label for="textinput2"><spring:message code="attendee.email"/>: </label>
    <form:input path="emailAddress" cssErrorClass="error" />
    <form:errors path="emailAddress" cssclass="error"/>
    <br>
    <input type="submit" class="btn" value="Enter Event">
</form:form>
</body>
</html>
