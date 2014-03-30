
<%@ page import="com.demo.domains.Transactions" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'transactions.label', default: 'Transactions')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
		<style type="text/css">
			.failedCharge{
				background-color: #FF0000;
			}
			
			.refundCharge{
				background-color: #FF5400;
			}
			
		</style>
	</head>
	<body>
		<a href="#list-transactions" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="list-transactions" class="content scaffold-list" role="main">
		
		
			<h1>Failed Charges </h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<th><g:message code="transactions.customer.label" default="Customer Name" /></th>
						
						<g:sortableColumn property="amount" title="${message(code: 'transactions.amount.label', default: 'Amount')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'transactions.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${failedTransactionList}" status="i" var="failedTransactionsInstance">
					<tr class="failedCharge">

						<td>${fieldValue(bean: failedTransactionsInstance, field: "customer.firstName")} ${fieldValue(bean: failedTransactionsInstance, field: "customer.lastName")}</td>
											
						<td>${fieldValue(bean: failedTransactionsInstance, field: "amount")}</td>
					
						<td><g:formatDate date="${failedTransactionsInstance.dateCreated}" format="MM/dd/yyyy HH:mm:ss"/></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
			<h1>Refund Charges </h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
						<th><g:message code="transactions.customer.label" default="Customer Name" /></th>
						
						<g:sortableColumn property="amount" title="${message(code: 'transactions.amount.label', default: 'Amount')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'transactions.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${refundedTransactionList}" status="i" var="refundTransactionsInstance">
					<tr class="refundCharge">

						<td>${fieldValue(bean: refundTransactionsInstance, field: "customer.firstName")} ${fieldValue(bean: refundTransactionsInstance, field: "customer.lastName")}</td>
											
						<td>${fieldValue(bean: refundTransactionsInstance, field: "amount")}</td>
					
						<td><g:formatDate date="${refundTransactionsInstance.dateCreated}" format="MM/dd/yyyy HH:mm:ss"/></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
			
			<h1>Successful Charges </h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>

						<th><g:message code="transactions.customer.label" default="Customer Name" /></th>
											
						<g:sortableColumn property="amount" title="${message(code: 'transactions.amount.label', default: 'Amount')}" />
					
						<g:sortableColumn property="dateCreated" title="${message(code: 'transactions.dateCreated.label', default: 'Date Created')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${successTransactionList}" status="i" var="successTransactionsInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: successTransactionsInstance, field: "customer.firstName")} ${fieldValue(bean: successTransactionsInstance, field: "customer.lastName")}</td>
					
						<td>${fieldValue(bean: successTransactionsInstance, field: "amount")}</td>
					
						<td><g:formatDate date="${successTransactionsInstance.dateCreated}" format="MM/dd/yyyy HH:mm:ss"/></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			
			
		</div>
	</body>
</html>
