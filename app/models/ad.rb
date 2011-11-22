# Class for the humble banner ad
class Ad < ActiveRecord::Base
  belongs_to :corporation
  
  # Setting the statistics table to be shared with the user
  has_many :adstats, :foreign_key => "ad_id", :dependent => :destroy
  has_many :users, :through => :adstats, :source => :ad_id
end
