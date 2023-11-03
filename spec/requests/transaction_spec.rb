# spec/controllers/transactions_controller_spec.rb
require 'rails_helper'

RSpec.describe TransactionsController, type: :controller do
  let(:user) { create(:user) }
  let(:category) { create(:category, user:) }
  let(:valid_transaction_params) { { name: 'Sample Transaction', amount: 100, category_ids: [category.id] } }
  let(:invalid_transaction_params) { { name: 'Sample Transaction', amount: nil, category_ids: [category.id] } }

  before do
    sign_in user
  end

  describe 'GET #index' do
    it 'returns a successful response' do
      get :index, params: { category_id: category.id }
      expect(response).to be_successful
    end
  end

  describe 'GET #new' do
    it 'returns a successful response' do
      get :new, params: { category_id: category.id }
      expect(response).to be_successful
    end
  end

  describe 'POST #create with valid attributes' do
    it 'creates a new transaction' do
      expect do
        post :create, params: { category_id: category.id, transaction: valid_transaction_params }
      end.to change(Transaction, :count).by(1)
    end

    it 'redirects to the category_transactions_path' do
      post :create, params: { category_id: category.id, transaction: valid_transaction_params }
      expect(response).to redirect_to(category_transactions_path(category))
      expect(flash[:notice]).to be_present
    end
  end

  describe 'POST #create with invalid attributes' do
    it 'does not create a new transaction' do
      expect do
        post :create, params: { category_id: category.id, transaction: invalid_transaction_params }
      end.to change(Transaction, :count)
    end
  end
end
