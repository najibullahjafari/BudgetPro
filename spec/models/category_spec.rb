require 'rails_helper'

RSpec.describe Category, type: :model do
  before do
    @user = User.create(full_name: 'Najib', email: 'john@example.com', password: 'password123')
    @category = Category.create(name: 'Sample Category', icon: 'fa-icon-name', user: @user)
  end

  it 'should be valid' do
    expect(@category).to be_valid
  end

  it 'should have a user' do
    expect(@category.user).to eq(@user)
  end

  it 'should have an icon' do
    expect(@category.icon).to eq('fa-icon-name')
  end
end
