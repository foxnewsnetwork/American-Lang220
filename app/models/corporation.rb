# Accounts for business-level users
class Corporation < ActiveRecord::Base
  has_many :ads , :dependent => :destroy

end
