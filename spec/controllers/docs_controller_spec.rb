require 'spec_helper'

describe DocsController do

  describe "GET 'javascript'" do
    it "should be successful" do
      get 'javascript'
      response.should be_success
    end
  end

  describe "GET 'curl'" do
    it "should be successful" do
      get 'curl'
      response.should be_success
    end
  end

  describe "GET 'ruby'" do
    it "should be successful" do
      get 'ruby'
      response.should be_success
    end
  end

  describe "GET 'java'" do
    it "should be successful" do
      get 'java'
      response.should be_success
    end
  end

  describe "GET 'python'" do
    it "should be successful" do
      get 'python'
      response.should be_success
    end
  end

  describe "GET 'php'" do
    it "should be successful" do
      get 'php'
      response.should be_success
    end
  end

end
