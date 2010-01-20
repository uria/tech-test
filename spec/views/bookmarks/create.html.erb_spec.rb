require 'spec_helper'

describe "/bookmarks/create" do
  before(:each) do
    render 'bookmarks/create'
  end

  #Delete this example and add some real ones or delete this file
  it "should tell you where to find the file" do
    response.should have_tag('p', %r[Find me in app/views/bookmark/create])
  end
end
