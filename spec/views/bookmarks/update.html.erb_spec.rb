require 'spec_helper'

describe "/bookmarks/update" do
  before(:each) do
    render 'bookmarks/update'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/bookmark/update])
  end
end