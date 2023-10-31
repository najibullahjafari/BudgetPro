class TransactionsController < ApplicationController

  def index
    @category = Category.find(params[:category_id])
    @transactions = @category.transactions.order(created_at: :desc)
  end

  def new 
    @transactions = Transactions.new
  end

  def create
    @transactions = current_user.transactions.build(transactions_parms)
    if @transactions.save
      redirect_to category_transactions_path(@transactions.category), notice: "transaction added"
    else
      render: new
    end
  end

  private

  def transactions_parms
    parms.require(:transactions).permit(:name, :amount, :category_id)
  end
end
