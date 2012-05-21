<%--
  Created by IntelliJ IDEA.
  User: Daniel Kruss
  Date: 2012/05/21
  Time: 1:32 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'mobiUser.label', default: 'MobiUser')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>
<body>
<a href="#create-mobiUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="create-mobiUser" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]" /></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${mobiUserInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${mobiUserInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>

<g:uploadForm action="importCSV">
    <input type="file" name="file" />
    <input type="submit" />
</g:uploadForm>
</body>
</html>