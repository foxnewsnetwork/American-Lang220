class AdvertiserSignUpMailer < ActionMailer::Base
  default :from => "from@example.com"
 
  def welcome_email
    @url  = "http://example.com/login"
    mail(:to => "hanqijing@gmail.com", :subject => "Welcome to My Awesome Site")
  end
end
