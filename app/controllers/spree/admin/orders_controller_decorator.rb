Spree::Admin::OrdersController.class_eval do
  def cancel
    @order.cancel!
    flash[:error] = 'Order cancelled - You must cancel the payment in PayPal manually!'
    redirect_to :back
  end
end