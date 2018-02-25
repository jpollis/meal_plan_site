class Plan < ApplicationRecord
  include  ActionView::Helpers::NumberHelper

  has_many :customers

  def number_and_price
    "#{self.number} meals per week - #{number_to_currency(self.price)}"
  end
end
