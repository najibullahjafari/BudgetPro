class CategoriesController < ApplicationController
  before_action :authenticate_user!

  def index
    @categories = current_user.categories
  end

  def new
    @categories = Category.new
  end

  def create
    @categories = current_user.categories.build(category_parms)
    if @categories.save
      redirect_to root_path, notice: "Category added"
    else
      render :new
    end
  end

  private

  def category_parms
    parms.require(:category).permit(:name, :icon)
  end
end
