class StudiesController < ApplicationController
  def index
      @studies = Study.all
      @random = @studies.sample
      @display = @random
      @categories = Category.all
  end

  def new
  end

  def create
    @study = Study.new(study_params)
    if @study.save
      flash[:success] = "クイズを作成しました！"
      redirect_to "/"
    else
      render 'new'
    end
  end

  def edit
      @study = Study.find(params["id"])
  end

  def update
      study = Study.find(params["id"])
      study.title = params["studies"]["question"]
      study.body = params["studies"]["answer"]
      study.category_id = params["studies"]["category_id"]
      study.save
      redirect_to "/"
  end

  def destroy
     study = Study.find(params["id"])
     study.destroy
     redirect_to "/"
  end

  def show
     @study = Study.find(params["id"])
  end
  
  private
  
  def study_params
    params.require(:studies).permit(:question, :answer, :category_id, :img)
  end
end
