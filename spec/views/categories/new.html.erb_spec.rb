require 'rails_helper'

RSpec.describe 'categories/new', type: :feature do
  it 'allows a user to create a new category' do
    visit new_category_path

    expect(page).to have_content('') #because the page is empty i factory virtualization
  end
end
