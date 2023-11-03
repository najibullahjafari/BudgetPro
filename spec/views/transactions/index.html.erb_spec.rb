require 'rails_helper'

RSpec.describe 'transactions/index', type: :view do
  before(:each) do
    assign(:budget_transactions, [])
    assign(:category, create(:category, name: 'Category Name'))
  end

  context 'when there are no transactions' do
    it 'displays a message if there are no transactions' do
      render
      expect(rendered).to have_content('Transactions for Category Name')
      expect(rendered).to have_content('Total Amount:')
    end
  end
end
