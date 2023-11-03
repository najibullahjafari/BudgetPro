class Category < ApplicationRecord
  belongs_to :user
   has_and_belongs_to_many :budget_transactions, join_table: 'categories_transactions', class_name: 'Transaction'
  def total_amount
    budget_transactions.sum(:amount)
  end
end
