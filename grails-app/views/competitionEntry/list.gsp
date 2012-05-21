
<%@ page import="klipdriftpremiumdiski.CompetitionEntry" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'competitionEntry.label', default: 'CompetitionEntry')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-competitionEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-competitionEntry" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="competition" title="${message(code: 'competitionEntry.competition.label', default: 'Competition')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'competitionEntry.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="diskiName" title="${message(code: 'competitionEntry.diskiName.label', default: 'Diski Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'competitionEntry.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="gender" title="${message(code: 'competitionEntry.gender.label', default: 'Gender')}" />
					
						<g:sortableColumn property="mobileNumber" title="${message(code: 'competitionEntry.mobileNumber.label', default: 'Mobile Number')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${competitionEntryInstanceList}" status="i" var="competitionEntryInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${competitionEntryInstance.id}">${fieldValue(bean: competitionEntryInstance, field: "competition")}</g:link></td>
					
						<td>${fieldValue(bean: competitionEntryInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: competitionEntryInstance, field: "diskiName")}</td>
					
						<td>${fieldValue(bean: competitionEntryInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: competitionEntryInstance, field: "gender")}</td>
					
						<td>${fieldValue(bean: competitionEntryInstance, field: "mobileNumber")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${competitionEntryInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
