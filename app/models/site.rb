class Site < ActiveRecord::Base
  has_many :bookmarks, :dependent => :destroy

  validates_length_of :domain, :minimum => 1

  def self.per_page
    5
  end
end
