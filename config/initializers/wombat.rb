#Spree::Wombat::Config.configure do |config|

# config.connection_token = ENV['WOMBAT_TOKEN']
# config.connection_id = ENV['WOMBAT_CONNECTION_ID']

# config.push_objects = ["Spree::Order", "Spree::Product"]
# config.payload_builder = {
# # By default we filter orders to only push if they are completed.  You can remove the filter to send incomplete orders as well.
#	 "Spree::Order" => { serializer: "Spree::Wombat::OrderSerializer", root: "orders", filter: "complete" },
#     "Spree::Product" => { serializer: "Spree::Wombat::ProductSerializer", root: "products" },
#     #"Spree::Customers" => { serializer: "Spree::Wombat::CustomerSerializer", root: "customers" }
#	}
#   #config.push_url = "https://push.wombat.co"

#end

## in config/initializers/wombat.rb:
##Rails.application.config.to_prepare do
##  WebhookController.error_notifier = ->(responder) do
##    Honeybadger.notify(responder.exception)
##  end
##end

#Spree::Wombat::Config[:push_objects].each do |object|
# Spree::Wombat::Client.push_batches(object)
#end