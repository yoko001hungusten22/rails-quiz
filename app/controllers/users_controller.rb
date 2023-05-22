class UsersController < ApplicationController
  before_action :get_category, only: [:show]
  def show
    @user = User.find_by(id: params[:id])
  end
  
  def get_category
    @categories = Category.all
  end
end
