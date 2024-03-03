@if (get_payment_setting('status', PAYMOB_PAYMENT_METHOD_NAME) == 1)
    <li class="list-group-item">
        <input
            class="magic-radio js_payment_method"
            id="payment_{{ PAYMOB_PAYMENT_METHOD_NAME }}"
            name="payment_method"
            type="radio"
            value="{{ PAYMOB_PAYMENT_METHOD_NAME }}"
            @if ($selecting == PAYMOB_PAYMENT_METHOD_NAME) checked @endif
        >
        <label
            for="payment_{{ PAYMOB_PAYMENT_METHOD_NAME }}">{{ get_payment_setting('name', MOLLIE_PAYMENT_METHOD_NAME) }}</label>
        <div
            class="payment_{{ PAYMOB_PAYMENT_METHOD_NAME }}_wrap payment_collapse_wrap collapse @if ($selecting == MOLLIE_PAYMENT_METHOD_NAME) show @endif">
            <p>{!! get_payment_setting(
                'description',
                PAYMOB_PAYMENT_METHOD_NAME,
                __('Payment with :paymentType', ['paymentType' => 'PAYMOB']),
            ) !!}</p>
        </div>
    </li>
@endif
