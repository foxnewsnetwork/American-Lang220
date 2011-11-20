require 'spec_helper'

describe CastersignupsController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'success'" do
    it "should be successful" do
      get 'success'
      response.should be_success
    end
  end

  describe "GET 'failure'" do
    it "should be successful" do
      get 'failure'
      response.should be_success
    end
  end

  describe "GET 'faq'" do
    it "should be successful" do
      get 'faq'
      response.should be_success
    end
  end

  describe "GET 'overview'" do
    it "should be successful" do
      get 'overview'
      response.should be_success
    end
  end

  describe "GET 'perks'" do
    it "should be successful" do
      get 'perks'
      response.should be_success
    end
  end

  describe "GET 'partners'" do
    it "should be successful" do
      get 'partners'
      response.should be_success
    end
  end

end
