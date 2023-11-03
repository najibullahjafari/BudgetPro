class Transaction < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :categories, join_table: 'categories_transactions', class_name: 'Category'
end
