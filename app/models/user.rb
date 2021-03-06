# == Schema Information
#
# Table name: users
#
#  id                     :integer(4)      not null, primary key
#  email                  :string(255)     default(""), not null
#  encrypted_password     :string(128)     default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer(4)      default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  admin                  :boolean(1)
#  created_at             :datetime
#  updated_at             :datetime
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  
  # Putting connection to the ads table
  has_many :adstats, :foreign_key => "user_id" , :dependent => :destroy
  has_many :ads, :through => :adstats, :source => :user_id
  
  # Some some tools for dealing with the viewing of ads
  def view_ad(ad_id)
  	modify_adstat(ad_id, "views")
  end
  
  def click_ad(ad_id)
  	modify_adstat(ad_id, "clicks")
  end
  
  def close_ad(ad_id)
  	modify_adstat(ad_id, "closes")
  end
  
  private
  	def modify_adstat(ad_id, type)
  		result = self.adstats.find_by_ad_id( ad_id )
  		if result.nil?
	  		self.adstats.create!( :ad_id => ad_id ) 
	  		return modify_adstat(ad_id, "views")
	  	else
	  		case type
	  		when "views"
	  			result.views=( result.views + 1 )
	  		when "clicks"
	  			result.clicks=( result.clicks + 1 )
	  		when "closes"
	  			result.closes=( result.closes + 1 )
	  		else
	  			# Throw error here
	  			return false
	  		end
	  		result.save!
	  	end
  	end
end
