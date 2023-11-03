class CategoryTransaction < ApplicationRecord
  belongs_to :category, class_name: 'Category'
  belongs_to :transaction_association, class_name: 'Transaction', foreign_key: 'transaction_id'
end