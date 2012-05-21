<%@ page import="klipdriftpremiumdiski.DiskiName" %>



<div class="fieldcontain ${hasErrors(bean: diskiNameInstance, field: 'diskiName', 'error')} required">
	<label for="diskiName">
		<g:message code="diskiName.diskiName.label" default="Diski Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="diskiName" required="" value="${diskiNameInstance?.diskiName}"/>
</div>

