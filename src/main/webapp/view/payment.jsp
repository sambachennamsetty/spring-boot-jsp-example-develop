<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Buy cool new product</title>
<script src="https://js.stripe.com/v3/"></script>
</head>
<body>
	<form action="/charge" method="post" id="payment-form">
		<div class="form-row">
			<label for="card-element"> Credit or debit card </label>
			<div id="card-element">
				<!-- A Stripe Element will be inserted here. -->
			</div>

			<!-- Used to display Element errors. -->
			<div id="card-errors" role="alert"></div>
		</div>

		<button>Submit Payment</button>
	</form>
</body>
</html>