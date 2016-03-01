Spree::Image.class_eval do
  attachment_definitions[:attachment][:styles] = {
    :mini => '70x70>', # thumbs under image
    :small => '350x700>', # images on category view
    :product => '550x550>', # full product image
    :large => '600x600>' # light box image
  }
end
