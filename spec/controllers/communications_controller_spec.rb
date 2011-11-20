require 'spec_helper'

describe CommunicationsController do

  describe "GET 'transfer'" do
    it "should be successful" do
      get 'transfer'
      response.should be_success
    end
  end

end
