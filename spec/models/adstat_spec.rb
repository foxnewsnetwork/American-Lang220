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

require 'spec_helper'

describe Adstat do
  pending "add some examples to (or delete) #{__FILE__}"
end
