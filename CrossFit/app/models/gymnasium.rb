class Gymnasium < ActiveRecord::Base
  attr_accessible :City, :Name, :StreetAddress
  validates :City, :Name, :StreetAddress, :presence=>true
  validates :Name, :uniqueness=>true
  has_many :people, inverse_of: :Gymnasium
end
