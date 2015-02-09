Spree::Wombat::Config.configure do |config|

  config.connection_token = ENV['WOMBAT_TOKEN']
  config.connection_id = ENV['WOMBAT_CONNECTION_ID']

  config.push_objects = ["Spree::Order"]
  config.payload_builder = {
  # By default we filter orders to only push if they are completed.  You can remove the filter to send incomplete orders as well.
		"Spree::Order" => { serializer: "Spree::Wombat::OrderSerializer", root: "orders", filter: "complete" },
	#	"Spree::Product" => { serializer: "Spree::Wombat::ProductSerializer", root: "products" },
  #   "Spree::StockItem" => { serializer: "Spree::Wombat::StockItemSerializer", root: "inventories" }
  }
  # config.push_url = "http://developer.dendroidal.com/spree/"
  config.push_url = "http://54.149.177.150/SalesforceService.asmx?op=PushDataInSalesforceWithoutEmail"

end
