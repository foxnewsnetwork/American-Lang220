class GameMailer < ActionMailer::Base
  default :from => "from@example.com"

  def registration_confirmation(game)
    mail(:from => "The Gamertisers", :to => "#{game.email}", :subject => "Gamertiser Registration Received!")
  end
  def registration_confirmation_to_execs(game)
    @game = game
    mail(:to => "gamertisers@gmail.com, hanqijing@gmail.com", :subject => "Gamertiser Registration Received!" )
  end
end
