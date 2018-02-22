class AddColumnsToCustomers < ActiveRecord::Migration[5.1]
  def change
    add_column :customers, :address, :string
    add_column :customers, :optin, :boolean
  end
end
