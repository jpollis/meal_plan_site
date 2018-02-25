class RemoveMealCountFromCustomer < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :meal_count, :string
  end
end
