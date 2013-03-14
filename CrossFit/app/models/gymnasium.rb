class Gymnasium < ActiveRecord::Base
  attr_accessible :city, :country, :name, :street_address
  validates :city, :country, :name, :street_address, :presence=>true
  validates :name, :uniqueness=> true
  has_many :people, inverse_of: :Gymnasium
end
