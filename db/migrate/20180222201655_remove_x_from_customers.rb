class RemoveXFromCustomers < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :addressoptin, :boolean
  end
end
