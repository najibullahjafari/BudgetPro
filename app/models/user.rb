# app/models/user.rb
class User < ApplicationRecord
  has_many :transactions
  has_many :categories
end
