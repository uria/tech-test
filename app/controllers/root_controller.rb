class RootController < ApplicationController
  def index
    @bookmark = Bookmark.new
  end
end
