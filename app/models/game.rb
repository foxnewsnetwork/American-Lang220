class Game < ActiveRecord::Base

  attr_accessible :game_name, :email, :url, :user_amount, :contact_name

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :contact_name,  :presence   => true,
              :length     => { :maximum => 50}

  validates :email, :presence   => true,
          :format     => { :with => email_regex}
          #:uniqueness => { :case_sensitive => false}

  #validates :url, :presence   => true

  validates :user_amount, :presence   => true

  validates :game_name, :presence   => true, 
		:uniqueness => true
  
  validates_numericality_of :user_amount, :only_integer => true
end
