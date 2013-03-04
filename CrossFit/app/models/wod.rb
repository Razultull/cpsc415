class Wod < ActiveRecord::Base
    validates :Name, :NumberOfDaysPerWeek, :PersonalBest, :Repetitions, :TimeTaken, :WeightAmount, :presence=>true
    validates :Name, :uniqueness=>true
    validates :Repetitions, :NumberOfDaysPerWeek, :WeightAmount, :numericality=>{:greater_than_or_equal_to=>1}
    
  attr_accessible :Name, :NumberOfDaysPerWeek, :Repetitions, :TimeAlotted, :WeightAmount
end
