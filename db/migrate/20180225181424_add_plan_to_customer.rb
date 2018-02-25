class AddPlanToCustomer < ActiveRecord::Migration[5.1]
  def change
    add_reference :customers, :plan, foreign_key: true
  end
end
