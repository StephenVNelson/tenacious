class CreateElements < ActiveRecord::Migration[5.1]
  def change
    create_table :elements do |t|
      t.string :name
      t.integer :category_id

      t.timestamps
    end
  end
end
