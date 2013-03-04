class Person < ActiveRecord::Base
    belongs_to :Gymnasium, inverse_of :Person
    belongs_to :Location
    
  attr_accessible : Name, :Age, :Height, :Location, :Sex, :WODsTakenPartIn, :Weight
end
