class Gymnasium < ActiveRecord::Base
    has_many :Persons, inverse_of :Gymnasium
  attr_accessible : Name, :City, :StreetAddress, :Town
end
