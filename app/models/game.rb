class Game < ActiveRecord::Base

  attr_accessible :game_name, :email, :url, :user_amount, :contact_name

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :contact_name,  :presence   => true,
              :length     => { :maximum => 50},
		:uniqueness => true

  validates :email, :presence   => true,
          :format     => { :with => email_regex}, 
          :uniqueness => { :case_sensitive => false}
end
