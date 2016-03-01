Spree::Order.class_eval do

  state_machine do
    after_transition :to => :complete, :do => :add_user_guest
  end

  def add_user_guest 
  	
  #editing Developer remove hash sign on code then create new user
  # @test_password = SecureRandom.hex(8)
  # @user = Spree::User.new(:email => self.email, :password => @test_password, :password_confirmation => @test_password)
  # @user.spree_roles << Spree::Role.find_or_create_by(name: "user")

#@user.save
#Spree::BaseMailer::mail(to:self.email, from:'jainesh@commerceacceleration.com', subject:'Watteam Your New password', :body => @test_password).deliver


  
 
  end
end
