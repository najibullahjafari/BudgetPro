require 'rails_helper'

RSpec.describe 'transactions/new', type: :view do
  before(:each) do
    assign(:transaction, Transaction.new)
    assign(:category, create(:category, name: 'Category Name'))
  end

  it 'allows a user to create a new transaction' do
    render
    expect(rendered).to have_selector('form')
    expect(rendered).to have_field('transaction[name]')
  end
end
