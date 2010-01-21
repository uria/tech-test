require 'spec_helper'

describe SitesController do

  before do
    @site = mock_model(Site, :domain => "www.domain.com", :bookmarks => [], :destroy => nil)
    Site.stub!(:find).and_return(@site)
  end

  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "should be successful" do
      get 'show', :id => 1
      response.should be_success
    end
  end

  describe "DELETE 'destroy'" do
    it "should be successful" do
      delete 'destroy', :id => 1
      response.should be_redirect
    end
  end
end
