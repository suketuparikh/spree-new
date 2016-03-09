Spree::Order.class_eval do

  state_machine do
    before_transition :to => :complete, :do => :add_user_guest
    #go_to_state :complete
  end

  def add_user_guest 
  	
  #editing Developer remove hash sign on code then create new user
  @test_password = SecureRandom.hex(8)
  @user = Spree::User.new(:email => self.email, :password => @test_password, :password_confirmation => @test_password)
  @user.spree_roles << Spree::Role.find_or_create_by(name: "user")
  @email_signup_body = "<h2>Welcome "
  @email_signup_body = @email_signup_body << self.bill_address.firstname 
  @email_signup_body = @email_signup_body << "</h2>" 
  @email_signup_body = @email_signup_body << "<p>Your User name: " 
  @email_signup_body = @email_signup_body << self.email 
  @email_signup_body = @email_signup_body << "</p>" 
  @email_signup_body = @email_signup_body << "<p>Your Password: " 
  @email_signup_body = @email_signup_body << @test_password 
  @email_signup_body = @email_signup_body << "</p>"
  @user.save
  self.associate_user!(Spree.user_class.find_by_email(@user.email))
  Spree::BaseMailer::mail(to:self.email, from:'info@watteam.com', subject:'Watteam Your New password', :body => @email_signup_body).deliver
  end
end
