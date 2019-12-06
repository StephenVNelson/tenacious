class CreateExerciseElements < ActiveRecord::Migration[5.1]
  def change
    create_table :exercise_elements do |t|
      t.integer :exercise_id
      t.integer :element_id

      t.timestamps
    end
  end
end
