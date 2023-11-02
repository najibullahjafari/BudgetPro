# spec/models/category_spec.rb

require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'Associations' do
    it { should belong_to(:user) }
    it { should have_many(:transactions) }
  end

  describe 'total_amount' do
    it 'returns the sum of transaction amounts for the category' do
      user = User.create(email: 'test@example.com', password: 'password')
      category = Category.create(name: 'Test Category', user: user)
      transaction1 = Transaction.create(name: 'Transaction 1', amount: 100, category: category)
      transaction2 = Transaction.create(name: 'Transaction 2', amount: 200, category: category)

      total_amount = category.total_amount

      expect(total_amount).to eq(300)
    end

    it 'returns 0 if there are no transactions for the category' do
      user = User.create(email: 'test@example.com', password: 'password')
      category = Category.create(name: 'Empty Category', user: user)

      total_amount = category.total_amount

      expect(total_amount).to eq(0)
    end
  end
end
