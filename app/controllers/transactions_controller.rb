class TransactionsController < ApplicationController
  before_action :set_category

  def index
    @category = Category.find(params[:category_id])
    @budget_transactions = @category.budget_transactions.order(created_at: :desc)
    @total_amount = @budget_transactions.sum(:amount)
  end

  def new
    @category = Category.find(params[:category_id])

    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.new(transaction_params)
    @transaction.user = current_user

    if @transaction.save
      # The transaction will be associated with the selected categories automatically
      redirect_to category_transactions_path(@category), notice: 'Transaction added'
    else
      @category = Category.find(params[:category_id])
      render :new
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount, category_ids: [])
  end

  def set_category
    @category = Category.find(params[:category_id])
  end
end
