# == Schema Information
#
# Table name: castersignups
#
#  id           :integer(4)      not null, primary key
#  username     :string(255)
#  email        :string(255)
#  youtube      :string(255)
#  twitter      :string(255)
#  facebook     :string(255)
#  organization :string(255)
#  referrer     :string(255)
#  fullname     :string(255)
#  details      :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Castersignup < ActiveRecord::Base
  attr_accessible :username, :email, :details, :fullname

  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :username,  :presence   => true,
              :length     => { :maximum => 50},
          :uniqueness => true

  validates :email, :presence   => true,
          :format     => { :with => email_regex}, 
          :uniqueness => { :case_sensitive => false}
  validates :fullname, :presence   => true

  validates :details, :presence   => true

end
