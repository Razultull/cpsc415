class PersonalWod < ActiveRecord::Base
  attr_accessible : Name, :NumberOfDaysPerWeek, :PersonalBest, :Repetitions, :TimeTaken, :WeightAmount
end
