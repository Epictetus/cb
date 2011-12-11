require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end
  end

  describe "GET 'concept'" do
    it "should be successful" do
      get 'concept'
      response.should be_success
    end
  end

  describe "GET 'menu'" do
    it "should be successful" do
      get 'menu'
      response.should be_success
    end
  end

  describe "GET 'shop_info'" do
    it "should be successful" do
      get 'shop_info'
      response.should be_success
    end
  end

end
