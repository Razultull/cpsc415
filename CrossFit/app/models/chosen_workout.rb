class ChosenWorkout < ActiveRecord::Base
  belongs_to :name
  belongs_to :Person, inverse_of: :ChosenWorkout
  belongs_to :Workout, inverse_of: :ChosenWorkout
  # attr_accessible :title, :body
end
