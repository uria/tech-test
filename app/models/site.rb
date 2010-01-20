class Site < ActiveRecord::Base
  has_many :bookmarks

  validates_length_of :domain, :minimum => 1
end
