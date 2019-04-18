class CategoriesController < ApplicationController
  before_action :get_category, only: [:show, :edit, :update]

  def index
    @categories = Category.all
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
  end

  def create
    @category = Category.create(category_params)
    redirect_to category_path(@category)
  end

  def update
    @category.update(category_params)
    @category.save
  end

  private
  def get_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end
end
