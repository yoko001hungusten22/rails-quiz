class CategoriesController < ApplicationController
  def index
     @studies = Study.all
  end
  
  def show
     @category= Category.find(params[:id])
     @studies = Study.where(Category_id: params[:id])
  end
end
