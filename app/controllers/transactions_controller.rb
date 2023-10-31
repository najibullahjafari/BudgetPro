class TransactionsController < ApplicationController

  def index
    @category = Category.find(params[:category_id])
    @transactions = @category.transactions.order(created_at: :desc)
    @total_amount = @transactions.sum(:amount)
  end

  def new 
     @category = Category.find(params[:category_id])
    @transaction = Transaction.new
  end

    def create
    @transaction = current_user.transactions.build(transaction_params)

    # Set the category_id based on the URL parameter
    @transaction.category_id = params[:category_id]

    if @transaction.save
      category = Category.find(params[:category_id]) # Find the associated category
      redirect_to category_transactions_path(category), notice: "Transaction added"
    else
      render :new
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :amount)
  end
end
