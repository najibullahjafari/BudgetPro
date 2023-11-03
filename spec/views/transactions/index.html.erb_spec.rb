require 'rails_helper'

RSpec.describe 'transactions/index', type: :view do
  before(:each) do
    category = create(:category, name: 'Category Name')
    assign(:budget_transactions, [])
    assign(:category, category)
  end


  context 'when there are no transactions but have the contents' do
    it 'displays a message if it has the h1 element that is "Transactions" ' do
      render
      expect(rendered).to have_content('Transactions')
    end

    it 'displays a message if there is Total Amount content' do
      render
      expect(rendered).to have_content('Total Amount:')
    end
  end

  it 'displays a message if there is a "Back" button' do
    render
    expect(rendered).to have_link('Back', href: categories_path)
  end
end
