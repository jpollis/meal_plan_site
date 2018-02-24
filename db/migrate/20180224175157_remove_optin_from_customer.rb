class RemoveOptinFromCustomer < ActiveRecord::Migration[5.1]
  def change
    remove_column :customers, :optin, :boolean
  end
end
