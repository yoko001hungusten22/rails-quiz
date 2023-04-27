class CategoriesController < ApplicationController
  before_action :get_category, only: [:index, :show]
  
  def index
    @studies = Study.all
  end
  
  def show
    @category= Category.find(params[:id])
    @studies = Study.where(Category_id: params[:id])
  end
  
  def get_category
    @categories = Category.all
  end
end
