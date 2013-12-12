<%@ page import="domi.Comment" %>



<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'text', 'error')} ">
	<label for="text">
		<g:message code="comment.text.label" default="Text" />
		
	</label>
	<g:textField name="text" maxlength="250" value="${commentInstance?.text}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: commentInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="comment.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${commentInstance?.date}"  />
</div>

