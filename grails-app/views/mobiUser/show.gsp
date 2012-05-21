
<%@ page import="klipdriftpremiumdiski.MobiUser" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'mobiUser.label', default: 'MobiUser')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-mobiUser" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-mobiUser" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list mobiUser">
			
				<g:if test="${mobiUserInstance?.userId}">
				<li class="fieldcontain">
					<span id="userId-label" class="property-label"><g:message code="mobiUser.userId.label" default="User Id" /></span>
					
						<span class="property-value" aria-labelledby="userId-label"><g:fieldValue bean="${mobiUserInstance}" field="userId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mobiUserInstance?.nickname}">
				<li class="fieldcontain">
					<span id="nickname-label" class="property-label"><g:message code="mobiUser.nickname.label" default="Nickname" /></span>
					
						<span class="property-value" aria-labelledby="nickname-label"><g:fieldValue bean="${mobiUserInstance}" field="nickname"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mobiUserInstance?.diskiName}">
				<li class="fieldcontain">
					<span id="diskiName-label" class="property-label"><g:message code="mobiUser.diskiName.label" default="Diski Name" /></span>
					
						<span class="property-value" aria-labelledby="diskiName-label"><g:fieldValue bean="${mobiUserInstance}" field="diskiName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mobiUserInstance?.points}">
				<li class="fieldcontain">
					<span id="points-label" class="property-label"><g:message code="mobiUser.points.label" default="Points" /></span>
					
						<span class="property-value" aria-labelledby="points-label"><g:fieldValue bean="${mobiUserInstance}" field="points"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mobiUserInstance?.username}">
				<li class="fieldcontain">
					<span id="username-label" class="property-label"><g:message code="mobiUser.username.label" default="Username" /></span>
					
						<span class="property-value" aria-labelledby="username-label"><g:fieldValue bean="${mobiUserInstance}" field="username"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mobiUserInstance?.mobileNumber}">
				<li class="fieldcontain">
					<span id="mobileNumber-label" class="property-label"><g:message code="mobiUser.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${mobiUserInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mobiUserInstance?.emailAddress}">
				<li class="fieldcontain">
					<span id="emailAddress-label" class="property-label"><g:message code="mobiUser.emailAddress.label" default="Email Address" /></span>
					
						<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${mobiUserInstance}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${mobiUserInstance?.campaignCode}">
				<li class="fieldcontain">
					<span id="campaignCode-label" class="property-label"><g:message code="mobiUser.campaignCode.label" default="Campaign Code" /></span>
					
						<span class="property-value" aria-labelledby="campaignCode-label"><g:fieldValue bean="${mobiUserInstance}" field="campaignCode"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${mobiUserInstance?.id}" />
					<g:link class="edit" action="edit" id="${mobiUserInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
