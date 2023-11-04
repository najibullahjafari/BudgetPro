require 'rails_helper'

RSpec.describe 'categories/index', type: :view do
  let(:user) { create(:user) }
  before(:each) do
    assign(:categories, [])
  end

  context 'when there are no categories' do
    it 'displays a message to show that there is just the h1 element' do
      render
      expect(rendered).to have_content('Categories') # becasue there is h1 element with this content
    end
  end
end
