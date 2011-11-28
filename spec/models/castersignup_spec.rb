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

require 'spec_helper'

describe Castersignup do
  pending "add some examples to (or delete) #{__FILE__}"
end
