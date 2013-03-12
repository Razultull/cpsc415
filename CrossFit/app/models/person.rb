class Person < ActiveRecord::Base
  attr_accessible :Address, :DateOfBirth, :Height, :Name, :Sex, :Weight
  validates :Address, :DateOfBirth, :Height, :Name, :Sex, :Weight, :presence=>true
  validates :Name, :uniqueness=>true
end
