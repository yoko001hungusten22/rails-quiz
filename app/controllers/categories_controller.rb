class CategoriesController < ApplicationController
  def index
     @categories = Category.all
     @studies = Study.all
  end
  
  def show
     @categories = Category.all
     @category= Category.find(params[:id])
     @studies = Study.where(Category_id: params[:id])
  end
end
