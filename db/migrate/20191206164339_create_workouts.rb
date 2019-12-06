class CreateWorkouts < ActiveRecord::Migration[5.1]
  def change
    create_table :workouts do |t|
      t.integer :user_id
      t.integer :client_id
      t.datetime :scheduled_date
      t.datetime :logged_date
      t.integer :phase_number
      t.integer :week_number
      t.integer :day_number
      t.string :workout_focus
      t.integer :sets_reps_array
      t.string :resistance_array
      t.integer :set_duration_array
      t.integer :set_work_rest_array

      t.timestamps
    end
  end
end
