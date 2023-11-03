require 'rails_helper'

RSpec.describe 'categories/index', type: :view do
  before(:each) do
    assign(:categories, [])
  end

  context 'when there are no categories' do
    it 'displays a message if there are no categories' do
      render
      expect(rendered).to have_content('')
    end
  end
end
