require 'rails_helper'

RSpec.describe Transaction, type: :model do
  before do
    @user = User.create(full_name: 'Alice Smith', email: 'alice@example.com', password: 'password456')
    @category = Category.create(name: 'Sample Category', icon: 'fa-icon-name', user: @user)
    @transaction = Transaction.create(name: 'Sample Transaction', amount: 100.00, user: @user, categories: [@category])
  end

  it 'name should be present' do
    @transaction.name = nil
    expect(@transaction).to_not be_valid
  end

  it 'amount should be present' do
    @transaction.amount = nil
    expect(@transaction).to_not be_valid
  end

  it 'should be valid' do
    expect(@transaction).to be_valid
  end

  it 'should have a user' do
    expect(@transaction.user).to eq(@user)
  end

  it 'should have categories' do
    expect(@transaction.categories).to include(@category)
  end
end
