class BookmarksController < ApplicationController

  layout "empty", :only => :search

  def new
    @bookmark = Bookmark.new(params[:bookmark])
  end

  def create
    @bookmark = Bookmark.new(params[:bookmark])
    if @bookmark.save
      redirect_to :root
    else
      render :new
    end
  end

  def destroy
    Bookmark.destroy(params[:id])
    redirect_to :root
  end

  def edit
    @bookmark = Bookmark.find(params[:id])
  end

  def update
    @bookmark = Bookmark.find(params[:id])
    if @bookmark.update_attributes(params[:bookmark])
      redirect_to :root
    else
      render :edit
    end
  end

  def show
    @bookmark = Bookmark.find_by_id(params[:id])
    if @bookmark.nil?
      flash[:error] = "Inexistant bookmark. May have been deleted."
      redirect_to :root
    end
  end

  def search
    @bookmarks = Bookmark.path_or_title_like(params[:q])
    @sites = Site.domain_like(params[:q])
  end
end