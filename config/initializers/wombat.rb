Spree::Wombat::Config.configure do |config|

  config.connection_token = ENV['WOMBAT_TOKEN']
  config.connection_id = ENV['WOMBAT_CONNECTION_ID']

  config.push_objects = ["Spree::Order"]
  config.batch_size = 2
  config.payload_builder = {
  # By default we filter orders to only push if they are completed.  You can remove the filter to send incomplete orders as well.
		"Spree::Order" => { serializer: "Spree::Wombat::OrderSerializer", root: "orders", filter: "complete" },
	#	"Spree::Product" => { serializer: "Spree::Wombat::ProductSerializer", root: "products" },
  #   "Spree::StockItem" => { serializer: "Spree::Wombat::StockItemSerializer", root: "inventories" }
  }
  config.push_url = "http://watteam.com/watteam_spree/index.php"
  #config.push_url = "http://54.149.177.150/SalesforceService.asmx?op=PushDataInSalesforceWithoutEmail"

end
