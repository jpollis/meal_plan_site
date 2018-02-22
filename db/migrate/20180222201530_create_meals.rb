class CreateMeals < ActiveRecord::Migration[5.1]
  def change
    create_table :meals do |t|
      t.string :meal1
      t.text :description
      t.string :meal2
      t.text :description
      t.string :meal3
      t.text :description
      t.string :meal4
      t.text :description
      t.string :meal5
      t.text :description

      t.timestamps
    end
  end
end
