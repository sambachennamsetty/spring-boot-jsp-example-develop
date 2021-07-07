package com.company.app.controller;

import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.company.app.model.CreatePayment;
import com.company.app.model.CreatePaymentResponse;
import com.stripe.Stripe;
import com.stripe.model.PaymentIntent;
import com.stripe.net.RequestOptions;
import com.stripe.param.PaymentIntentCreateParams;

@RestController
public class StripePaymentController {

	@PostMapping("create-payment-intent")
	public CreatePaymentResponse createPaymentIntent(@RequestBody CreatePayment createPayment) throws Exception {

		Stripe.apiKey = "#";

		PaymentIntentCreateParams createParams = new PaymentIntentCreateParams.Builder().setCurrency("inr")
				.setAmount(10 * 15L).build();

		RequestOptions requestOptions = RequestOptions.builder().setStripeAccount("acct_1J7eVZSHpGo5qeOL").build();

		// Create a PaymentIntent with the order amount and currency
		PaymentIntent intent = PaymentIntent.create(createParams, requestOptions);

		return new CreatePaymentResponse(intent.getClientSecret());
	}
}
