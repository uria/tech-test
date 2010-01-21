class SitesController < ApplicationController
  def index
    @sites = Site.paginate :page => params[:page], :order => 'domain ASC'
  end

  def show
    @site = Site.find(params[:id], :include => [:bookmarks])
  rescue
    flash[:error] = "Inexistant site. May have been deleted."
    redirect_to sites_path
  end

  def destroy
    @site = Site.find(params[:id])
    flash[:message] = "All entries for #{@site.domain} have been deleted."
    @site.destroy
    redirect_to :root
  rescue
    flash[:error] = "Inexistant site. May have been deleted."
    redirect_to :root
  end

end
