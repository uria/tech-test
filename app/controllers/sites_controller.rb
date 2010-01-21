class SitesController < ApplicationController
  def index
    @sites = Site.paginate :page => params[:page], :order => 'domain ASC'
  end

  def show
    @site = Site.find_by_id(params[:id], :include => [:bookmarks])
    
    if @site.nil?
      flash[:error] = "Inexistant site. May have been deleted."
      redirect_to sites_path
    end
  end

  def destroy
    @site = Site.find(params[:id])
    if @site.nil?
      flash[:error] = "Inexistant site. May have been deleted."
    else
      flash[:message] = "All entries for #{@site.domain} have been deleted."
      @site.destroy
    end
    redirect_to :root
  end

end
