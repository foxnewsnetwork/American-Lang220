# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
AmericanLang220::Application.initialize!


config.action_mailer.raise_delivery_errors = true

# set delivery method to :smtp, :sendmail or :test
config.action_mailer.delivery_method = :smtp

# these options are only needed if you choose smtp delivery
config.action_mailer.smtp_settings = {
  :address        => 'smtp.example.com',
  :port           => 25,
  :domain         => 'www.example.com',
  :authentication => :login,
  :user_name      => 'www',
  :password       => 'secret'
}


