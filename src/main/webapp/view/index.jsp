<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Accept a card payment</title>
<meta name="description" content="A demo of a card payment on Stripe" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<link rel="stylesheet" href="../static/css/global.css" />
<script
	src="https://polyfill.io/v3/polyfill.min.js?version=3.52.1&features=fetch"></script>
</head>

<body>
	<!-- Display a payment form -->
	<form:form action="/" modelAttribute="createPayment"
		name="createPayment" method="post" title="Create Payment"
		id="payment-form">
		<form:input type="text" path="email" placeholder="Email address" />
		<form:input type="number" path="amount"
			placeholder="Please enter amount" />
		<button type="submit" id="submit">
			<div class="spinner hidden" id="spinner"></div>
			<span id="button-text">Submit</span>
		</button>
	</form:form>
</body>
</html>
