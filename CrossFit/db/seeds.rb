#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
#---
# Excerpted from "Agile Web Development with Rails, 4rd Ed.",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
#:name, :number_of_days_per_week, :number_of_exercises, :workout_length
Workout.delete_all
Workout.create(:name => "Elliptical Burn", 
           :number_of_days_per_week => 7, 
           :number_of_exercises => 5,
           :workout_length => "1 hour")
# . . .
Workout.create(:name => "Fat Burner", 
           :number_of_days_per_week => 5, 
           :number_of_exercises => 5,
           :workout_length => "90 Minutes")
# . . .
Workout.create(:name => "Mega Man Abs", 
           :number_of_days_per_week => 3, 
           :number_of_exercises => 12,
           :workout_length => "35 Minutes")
