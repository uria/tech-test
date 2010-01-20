class Bookmark < ActiveRecord::Base
  belongs_to :site

  validates_associated :site
  validates_uniqueness_of :path, :scope => :site_id
  
  #False attribute URL, splits itself into site and path
  attr_accessor :url

  def url=(url)
    domain,path = Bookmark.extract_domain_and_path(url)
    self.site = Site.find_by_domain(domain)
    self.site = Site.new(:domain => domain) if self.site.nil?
    self.path = path
  end

  def url
    if self.site.nil?
      self.path
    else
      self.site.domain + self.path
    end
  end
  
  private
  def self.extract_domain_and_path(url)
    #First, get rid of "http://" if present.
    #domain and path are split at the first slash
    splitted = /^(http:\/\/)?([^\/]*)(.*)/.match(url.downcase)
    [splitted[2],splitted[3]]
  end
end
