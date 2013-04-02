class Person < ActiveRecord::Base
  attr_accessible :address, :date_of_birth, :height, :name, :sex, :weight
  validates :address, :date_of_birth, :height, :name, :sex, :weight, :presence => true
  validates :name, :uniqueness =>true
  has_one :Gymnasium
  has_many :workouts, inverse_of: :Person
end
