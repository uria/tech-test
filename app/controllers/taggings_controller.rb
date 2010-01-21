class TaggingsController < ApplicationController
  def show
    @bookmarks = Bookmark.tagged_with(params[:id], :on => :tags)
  end

end
