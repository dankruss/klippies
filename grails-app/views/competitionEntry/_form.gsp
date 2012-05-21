<%@ page import="klipdriftpremiumdiski.CompetitionEntry" %>



<div class="fieldcontain ${hasErrors(bean: competitionEntryInstance, field: 'competition', 'error')} required">
	<label for="competition">
		<g:message code="competitionEntry.competition.label" default="Competition" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="competition" required="" value="${competitionEntryInstance?.competition}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: competitionEntryInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="competitionEntry.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${competitionEntryInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: competitionEntryInstance, field: 'diskiName', 'error')} ">
	<label for="diskiName">
		<g:message code="competitionEntry.diskiName.label" default="Diski Name" />
		
	</label>
	<g:textField name="diskiName" value="${competitionEntryInstance?.diskiName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: competitionEntryInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="competitionEntry.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${competitionEntryInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: competitionEntryInstance, field: 'gender', 'error')} required">
	<label for="gender">
		<g:message code="competitionEntry.gender.label" default="Gender" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="gender" required="" value="${competitionEntryInstance?.gender}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: competitionEntryInstance, field: 'mobileNumber', 'error')} required">
	<label for="mobileNumber">
		<g:message code="competitionEntry.mobileNumber.label" default="Mobile Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobileNumber" required="" value="${competitionEntryInstance?.mobileNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: competitionEntryInstance, field: 'emailAddress', 'error')} ">
	<label for="emailAddress">
		<g:message code="competitionEntry.emailAddress.label" default="Email Address" />
		
	</label>
	<g:field type="email" name="emailAddress" value="${competitionEntryInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: competitionEntryInstance, field: 'region', 'error')} required">
	<label for="region">
		<g:message code="competitionEntry.region.label" default="Region" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="region" required="" value="${competitionEntryInstance?.region}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: competitionEntryInstance, field: 'origin', 'error')} required">
	<label for="origin">
		<g:message code="competitionEntry.origin.label" default="Origin" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="origin" required="" value="${competitionEntryInstance?.origin}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: competitionEntryInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="competitionEntry.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${competitionEntryInstance?.date}"  />
</div>

