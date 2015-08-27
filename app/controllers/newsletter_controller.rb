class NewsletterController < ApplicationController
  def new
    @NewsLetter = Newsletter.new
  end

end