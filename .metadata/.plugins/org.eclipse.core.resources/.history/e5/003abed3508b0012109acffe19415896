class Gymnasium < ActiveRecord::Base
  attr_accessible :City, :Name, :StreetAddress
  validates :City, :Name, :StreetAddress, :presence=>true
  validates :Name, :uniqueness=>true
end
