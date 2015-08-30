class SiteloginController < ApplicationController
  def new
    @SiteLogin = Sitelogin.new
  end

  def login
    session[:valid_sitelogin] = false;
    
    if params['site_password'].upcase == "POWERBEAT"
      session[:valid_sitelogin] = true;
      redirect_to spree.products_path
    else
      session[:valid_sitelogin] = false;
      redirect_to spree.products_path
    end
  end

end