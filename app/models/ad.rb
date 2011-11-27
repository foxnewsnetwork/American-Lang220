# == Schema Information
#
# Table name: ads
#
#  id             :integer(4)      not null, primary key
#  name           :string(255)
#  corporation_id :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

# Class for the humble banner ad
class Ad < ActiveRecord::Base
	# The corporations make ads.. although eventually we ought to make it so that
	# users can easily change their accounts to corporation level
  belongs_to :corporation
  
  # Validations
  validates :corporation_id, :presence => true
  
  # Accessible traits
  attr_accessible :name
  
  # Setting the statistics table to be shared with the user
  has_many :adstats, :foreign_key => "ad_id", :dependent => :destroy
  has_many :users, :through => :adstats, :source => :ad_id
end
