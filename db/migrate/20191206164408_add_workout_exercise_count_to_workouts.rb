class AddWorkoutExerciseCountToWorkouts < ActiveRecord::Migration[5.1]
  def change
    add_column :workouts, :workout_exercises_count, :integer
  end
end
