class GameMailer < ActionMailer::Base
  default :from => "from@example.com"
  def registration_confirmation(game)
    mail(:to => "#{game.contact_name} <#{game.email}>", :subject => "registered")
  end
end
