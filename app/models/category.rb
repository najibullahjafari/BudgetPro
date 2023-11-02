class Category < ApplicationRecord
  belongs_to :user
  has_many :transactions

  def total_amount
    transactions.sum(:amount)
  end
end
