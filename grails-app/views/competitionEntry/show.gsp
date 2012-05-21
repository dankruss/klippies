
<%@ page import="klipdriftpremiumdiski.CompetitionEntry" %>
<!doctype html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'competitionEntry.label', default: 'CompetitionEntry')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-competitionEntry" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-competitionEntry" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list competitionEntry">
			
				<g:if test="${competitionEntryInstance?.competition}">
				<li class="fieldcontain">
					<span id="competition-label" class="property-label"><g:message code="competitionEntry.competition.label" default="Competition" /></span>
					
						<span class="property-value" aria-labelledby="competition-label"><g:fieldValue bean="${competitionEntryInstance}" field="competition"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${competitionEntryInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="competitionEntry.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${competitionEntryInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${competitionEntryInstance?.diskiName}">
				<li class="fieldcontain">
					<span id="diskiName-label" class="property-label"><g:message code="competitionEntry.diskiName.label" default="Diski Name" /></span>
					
						<span class="property-value" aria-labelledby="diskiName-label"><g:fieldValue bean="${competitionEntryInstance}" field="diskiName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${competitionEntryInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="competitionEntry.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${competitionEntryInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${competitionEntryInstance?.gender}">
				<li class="fieldcontain">
					<span id="gender-label" class="property-label"><g:message code="competitionEntry.gender.label" default="Gender" /></span>
					
						<span class="property-value" aria-labelledby="gender-label"><g:fieldValue bean="${competitionEntryInstance}" field="gender"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${competitionEntryInstance?.mobileNumber}">
				<li class="fieldcontain">
					<span id="mobileNumber-label" class="property-label"><g:message code="competitionEntry.mobileNumber.label" default="Mobile Number" /></span>
					
						<span class="property-value" aria-labelledby="mobileNumber-label"><g:fieldValue bean="${competitionEntryInstance}" field="mobileNumber"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${competitionEntryInstance?.emailAddress}">
				<li class="fieldcontain">
					<span id="emailAddress-label" class="property-label"><g:message code="competitionEntry.emailAddress.label" default="Email Address" /></span>
					
						<span class="property-value" aria-labelledby="emailAddress-label"><g:fieldValue bean="${competitionEntryInstance}" field="emailAddress"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${competitionEntryInstance?.region}">
				<li class="fieldcontain">
					<span id="region-label" class="property-label"><g:message code="competitionEntry.region.label" default="Region" /></span>
					
						<span class="property-value" aria-labelledby="region-label"><g:fieldValue bean="${competitionEntryInstance}" field="region"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${competitionEntryInstance?.origin}">
				<li class="fieldcontain">
					<span id="origin-label" class="property-label"><g:message code="competitionEntry.origin.label" default="Origin" /></span>
					
						<span class="property-value" aria-labelledby="origin-label"><g:fieldValue bean="${competitionEntryInstance}" field="origin"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${competitionEntryInstance?.date}">
				<li class="fieldcontain">
					<span id="date-label" class="property-label"><g:message code="competitionEntry.date.label" default="Date" /></span>
					
						<span class="property-value" aria-labelledby="date-label"><g:formatDate date="${competitionEntryInstance?.date}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${competitionEntryInstance?.id}" />
					<g:link class="edit" action="edit" id="${competitionEntryInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
