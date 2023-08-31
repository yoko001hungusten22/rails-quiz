class StudiesController < ApplicationController
  before_action :authenticate_user!
  before_action :get_category, only: [:index, :new, :show, :edit]
  
  def index
     @studies = current_user.studies.all
     @random_studies = @studies.shuffle
  end

  def new
  end

  def create
    @study = current_user.studies.new(study_params)
    if @study.save
      flash[:success] = "クイズを作成しました！"
      redirect_to studies_path
    else
      render 'new'
    end
  end

  def edit
      @study = Study.find(params[:id])
  end

  def update
    @study = Study.find(params[:id])
    if @study.update(study_params)
      flash[:success] = "クイズを更新しました！"
      redirect_to studies_path
    else
      render 'edit'
    end
  end

  def destroy
     study = Study.find(params[:id])
     study.destroy
     redirect_to studies_path
  end

  def show
     @study = Study.find(params[:id])
  end
  
  def get_category
      @categories = Category.all
  end
  
  def study_results
    @study = Study.find(params[:id])
    @understood_results = @study.study_results.where(understood: true)
  end
  
  def toggle_understood
    @study = Study.find(params[:id])
    study_result = @study.study_results.find_or_initialize_by(user_id: current_user.id)
    study_result.understood = !study_result.understood
    study_result.save
    redirect_to study_path(@study)
  end
  
  private
  
  def study_params
    params.require(:studies).permit(:question, :answer, :category_id, :img)
  end
end
