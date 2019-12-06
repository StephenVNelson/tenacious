class AddWorkoutCountToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :workouts_count, :integer
  end
end
