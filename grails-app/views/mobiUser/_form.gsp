<%@ page import="klipdriftpremiumdiski.MobiUser" %>



<div class="fieldcontain ${hasErrors(bean: mobiUserInstance, field: 'userId', 'error')} required">
	<label for="userId">
		<g:message code="mobiUser.userId.label" default="User Id" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="userId" required="" value="${mobiUserInstance?.userId}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mobiUserInstance, field: 'nickname', 'error')} ">
	<label for="nickname">
		<g:message code="mobiUser.nickname.label" default="Nickname" />
		
	</label>
	<g:textField name="nickname" value="${mobiUserInstance?.nickname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mobiUserInstance, field: 'diskiName', 'error')} ">
	<label for="diskiName">
		<g:message code="mobiUser.diskiName.label" default="Diski Name" />
		
	</label>
	<g:textField name="diskiName" value="${mobiUserInstance?.diskiName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mobiUserInstance, field: 'points', 'error')} required">
	<label for="points">
		<g:message code="mobiUser.points.label" default="Points" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="number" name="points" required="" value="${fieldValue(bean: mobiUserInstance, field: 'points')}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mobiUserInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="mobiUser.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" required="" value="${mobiUserInstance?.username}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mobiUserInstance, field: 'mobileNumber', 'error')} required">
	<label for="mobileNumber">
		<g:message code="mobiUser.mobileNumber.label" default="Mobile Number" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="mobileNumber" required="" value="${mobiUserInstance?.mobileNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mobiUserInstance, field: 'emailAddress', 'error')} ">
	<label for="emailAddress">
		<g:message code="mobiUser.emailAddress.label" default="Email Address" />
		
	</label>
	<g:field type="email" name="emailAddress" value="${mobiUserInstance?.emailAddress}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: mobiUserInstance, field: 'campaignCode', 'error')} required">
	<label for="campaignCode">
		<g:message code="mobiUser.campaignCode.label" default="Campaign Code" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="campaignCode" required="" value="${mobiUserInstance?.campaignCode}"/>
</div>

