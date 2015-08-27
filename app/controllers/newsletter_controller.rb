class NewsletterController < ApplicationController
  def new
    @Newsletter = Newsletter.new
  end

end