require 'spec_helper'

describe Bookmark do
  before(:each) do
    @valid_attributes = {
      :url => "www.domain.com/folder1/folder2/file.ext",
      :title => "Website's title."
    }
  end

  it "should create a new instance given valid attributes" do
    Bookmark.create!(@valid_attributes)
  end

  it "should split a url correctly into domain and path" do
    b = Bookmark.new(:url => "www.google.com/path")
    b.path.should == "/path"
    b.site.domain.should == "www.google.com"
  end

  it "should split a url correctly even if it has 'http://' at the start" do
    b = Bookmark.new(:url => "http://www.google.com/path")
    b.path.should == "/path"
    b.site.domain.should == "www.google.com"
  end

  it "shouldn't validate urls with an empty domain" do
    b = Bookmark.create(:url => "/path")
    b.should have(1).errors_on(:site)
  end

  it "shouldn't save the same url two times" do
    Bookmark.create!(@valid_attributes)
    lambda {
      Bookmark.create!(@valid_attributes)
    }.should raise_exception
  end
end
