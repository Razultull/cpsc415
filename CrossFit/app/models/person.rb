class Person < ActiveRecord::Base
    belongs_to :gymnasium, inverse_of :person
    belongs_to :Location
    validates :Name, :Age, :Height, :Location, :Sex, :WODsTakenPartIn, :Weight, :presence=>true
    validates :Age, :numericality=>{:greater_than_or_equal_to=>13}
    validates :Name, :uniqueness=>true
  attr_accessible :Name, :Age, :Height, :Location, :Sex, :WODsTakenPartIn, :Weight
end
