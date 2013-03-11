class WoD < ActiveRecord::Base
  attr_accessible :Name, :NumberOfDaysPerWeek, :NumberOfExercises, :TimeNeeded
end
