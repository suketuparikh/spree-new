Spree::Gateway::PayPalExpress.class_eval do
  def credit(credit_cents, response_code, gateway_options)
    # TODO: this should use the `refund` method, but it needs some work.
    # Doing nothing for now to prevent an error and allow orders to be cancelled.
    warning:'PayPal credit method not implemented, make sure payments are cancelled manually'
  end
end