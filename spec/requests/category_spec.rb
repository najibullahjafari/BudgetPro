require 'rails_helper'

RSpec.describe CategoriesController, type: :controller do
  let(:user) { create(:user) } #User factory

  before do
    sign_in(user) # Sign in the user using Devise
  end

  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_successful
    end

    it 'assigns the user categories to @categories' do
      category = create(:category, user: user)
      get :index
      expect(assigns(:categories)).to eq([category])
    end
  end

  describe 'GET #new' do
    it 'returns a successful response' do
      get :new
      expect(response).to be_successful
    end

    it 'assigns a new category to @category' do
      get :new
      expect(assigns(:category)).to be_a_new(Category)
    end
  end

  describe 'POST #create' do
    context 'with valid attributes' do
      it 'creates a new category' do
        expect do
          post :create, params: { category: attributes_for(:category) }
        end.to change(Category, :count).by(1)
      end

      it 'redirects to the categories index' do
        post :create, params: { category: attributes_for(:category) }
        expect(response).to redirect_to(categories_path)
      end
    end

    context 'with invalid attributes' do
      it 'does not create a new category' do
        expect do
          post :create, params: { category: attributes_for(:category, name: nil) }
        end.to change(Category, :count)
      end
    end
  end
end
