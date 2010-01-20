require 'spec_helper'

describe "/root/index" do
  before(:each) do
    render 'root/index'
  end

  it "should have a form" do
    response.should have_tag('form')
  end
end
