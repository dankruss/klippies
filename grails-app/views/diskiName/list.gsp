
<%@ page import="klipdriftpremiumdiski.DiskiName" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'diskiName.label', default: 'DiskiName')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-diskiName" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
                <li><g:link class="create" action="importer">Import Diski Names</g:link></li>
			</ul>
		</div>
		<div id="list-diskiName" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="diskiName" title="${message(code: 'diskiName.diskiName.label', default: 'Diski Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${diskiNameInstanceList}" status="i" var="diskiNameInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${diskiNameInstance.id}">${fieldValue(bean: diskiNameInstance, field: "diskiName")}</g:link></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${diskiNameInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
