class Gymnasium < ActiveRecord::Base
    has_many :persons, inverse_of :gymnasium
    validates :Name, :City, StreetAddress, :Town, :presence=>true
  attr_accessible :Name, :City, :StreetAddress, :Town
end
