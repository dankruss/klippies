
<%@ page import="klipdriftpremiumdiski.MobiUser" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mobiUser.label', default: 'MobiUser')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-mobiUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-mobiUser" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="userId" title="${message(code: 'mobiUser.userId.label', default: 'User Id')}" />
					
						<g:sortableColumn property="nickname" title="${message(code: 'mobiUser.nickname.label', default: 'Nickname')}" />
					
						<g:sortableColumn property="diskiName" title="${message(code: 'mobiUser.diskiName.label', default: 'Diski Name')}" />
					
						<g:sortableColumn property="points" title="${message(code: 'mobiUser.points.label', default: 'Points')}" />
					
						<g:sortableColumn property="username" title="${message(code: 'mobiUser.username.label', default: 'Username')}" />
					
						<g:sortableColumn property="mobileNumber" title="${message(code: 'mobiUser.mobileNumber.label', default: 'Mobile Number')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${mobiUserInstanceList}" status="i" var="mobiUserInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${mobiUserInstance.id}">${fieldValue(bean: mobiUserInstance, field: "userId")}</g:link></td>
					
						<td>${fieldValue(bean: mobiUserInstance, field: "nickname")}</td>
					
						<td>${fieldValue(bean: mobiUserInstance, field: "diskiName")}</td>
					
						<td>${fieldValue(bean: mobiUserInstance, field: "points")}</td>
					
						<td>${fieldValue(bean: mobiUserInstance, field: "username")}</td>
					
						<td>${fieldValue(bean: mobiUserInstance, field: "mobileNumber")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${mobiUserInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
