class Workout < ActiveRecord::Base
  belongs_to :creator_id
  attr_accessible :name, :number_of_days_per_week, :number_of_exercises, :workout_length
end
