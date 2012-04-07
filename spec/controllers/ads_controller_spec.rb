require 'spec_helper'

describe AdsController do

  describe "POST 'create'" do
  
  	# Setting up a corporation and their attributes
  	before(:each) do
  		@attr = { :name => "Nike Mike", 
  							:email => "mike@nike.com", 
  							:password => "password" ,
  							:password_confirmation => "password" ,
  							:remember_me => true }
  		@corp = Factory( :corporation )
  		@ad_attr = { :name => "Just fag it" }
  		@ad_make = { :corporation => @attr , :ad => @ad_attr }
  	end
  
    it "should be successful" do
      post :create, :ad_make => @ad_make
      response.should be_success
    end
    
    it "should make a new ad" do
    	lambda do
	    	post :create, :ad_make => @ad_make
	    end.should change(Ad, :count).by(1)
    end
    
    it "should redirect to the new page" do
    	post :create, :ad_make => @ad_make
    	response.should redirect_to( @corp.ads.last )
    end
    
    it "should fail if the we don't log in correctly" do
    	@wrong = { :email => "wrong@email.com", :password => "wrongpass" }
    	@ad_make2 = @ad_make.merge( :corporation => @wrong )
    	lambda do
	    	post :create, :ad_make => @ad_make2
	    end.should_not change(Ad, :count)
    end
  end

  describe "GET 'destroy'" do
    it "should be successful" do
      get 'destroy'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show'
      response.should be_success
    end
  end

  describe "GET 'edit'" do
    it "should be successful" do
      get 'edit'
      response.should be_success
    end
  end

  describe "GET 'interact'" do
    it "should be successful" do
      get 'interact'
      response.should be_success
    end
  end

end
