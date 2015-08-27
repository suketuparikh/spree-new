class NewsletterController < ApplicationController
  def new
    @Newsletter = Newsletter.new
    @body_id = "newsletter"
  end

end