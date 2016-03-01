<<<<<<< HEAD
# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
 
  attachment_config = {

	  s3_credentials: {
		access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
		secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
		bucket:            ENV['S3_BUCKET_NAME']
	  },

	  storage:        :s3,
	  s3_headers:     { "Cache-Control" => "max-age=31557600" },
	  s3_protocol:    "https",
	  bucket:         ENV['S3_BUCKET_NAME'],
	  url:            ":s3_domain_url",

	  styles: {
		  mini:     "48x48>",
		  small:    "100x100>",
		  product:  "340x340>"
	  },

	  path:           ":rails_root/public/:class/:attachment/:id/:style/:basename.:extension",
	  default_url:    "/:class/:attachment/:id/:style/:basename.:extension",
	  default_style:  "product"
	}

	attachment_config.each do |key, value|
	  Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
	end

end

Spree.user_class = "Spree::User"

Paperclip.interpolates(:s3_domain_url) do |attachment, style|
"#{attachment.s3_protocol}://#{attachment.s3_host_name}/#{attachment.bucket_name}/#{attachment.path(style).gsub(%r{^/},"")}"
end

Spree::Config[:always_include_confirm_step] = true
Spree::Auth::Config[:registration_step] = true
Spree::Config[:checkout_zone] = "North America"
=======
# Configure Spree Preferences
#
# Note: Initializing preferences available within the Admin will overwrite any changes that were made through the user interface when you restart.
#       If you would like users to be able to update a setting with the Admin it should NOT be set here.
#
# In order to initialize a setting do:
# config.setting_name = 'new value'
Spree.config do |config|
  # Example:
  # Uncomment to stop tracking inventory levels in the application
  # config.track_inventory_levels = false
 
  attachment_config = {

	  s3_credentials: {
		access_key_id:     ENV['AWS_ACCESS_KEY_ID'],
		secret_access_key: ENV['AWS_SECRET_ACCESS_KEY'],
		bucket:            ENV['S3_BUCKET_NAME']
	  },

	  storage:        :s3,
	  s3_headers:     { "Cache-Control" => "max-age=31557600" },
	  s3_protocol:    "https",
	  bucket:         ENV['S3_BUCKET_NAME'],
	  url:            ":s3_domain_url",

	  styles: {
		  mini:     "70x70>",
		  small:    "100x100>",
		  product:  "550x550>"
	  },

	  path:           "/app/public/:class/:attachment/:id/:style/:basename.:extension",
	  default_url:    "/:class/:attachment/:id/:style/:basename.:extension",
	  default_style:  "product"
	}

	attachment_config.each do |key, value|
	  Spree::Image.attachment_definitions[:attachment][key.to_sym] = value
	end

end

Spree.user_class = "Spree::User"

Paperclip.interpolates(:s3_domain_url) do |attachment, style|
"#{attachment.s3_protocol}://#{attachment.s3_host_name}/#{attachment.bucket_name}/#{attachment.path(style).gsub(%r{^/},"")}"
end

Spree::Config[:always_include_confirm_step] = true
Spree::Auth::Config[:registration_step] = true
Spree::Config[:checkout_zone] = "North America"
>>>>>>> staging
