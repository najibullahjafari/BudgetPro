class Transactions < ApplicationRecord
  belongs_to :user
  has_many :Category
end
