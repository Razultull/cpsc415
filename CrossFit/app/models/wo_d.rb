class WoD < ActiveRecord::Base
  attr_accessible :Name, :NumberOfDaysPerWeek, :NumberOfExercises, :TimeNeeded
  validates :Name, :NumberOfDaysPerWeek, :NumberOfExercises, :TimeNeeded, :presence => true
  validates :Name, :uniqueness=> true
  
end
