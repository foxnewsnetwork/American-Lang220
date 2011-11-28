# == Schema Information
#
# Table name: adstats
#
#  id         :integer(4)      not null, primary key
#  ad_id      :integer(4)
#  user_id    :integer(4)
#  views      :integer(4)      default(0)
#  clicks     :integer(4)      default(0)
#  closes     :integer(4)      default(0)
#  created_at :datetime
#  updated_at :datetime
#

class Adstat < ActiveRecord::Base
	attr_accessible :ad_id , :user_id , :views , :clicks , :closes
	
	belongs_to :ad, :class_name => "Ad"
	belongs_to :user, :class_name => "User"
	
	validates :ad_id, :presence => true
	validates :user_id, :presence => true
end
