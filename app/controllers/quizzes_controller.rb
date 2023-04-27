class QuizzesController < ApplicationController
  def index
    @studies = Study.all
    @random = @studies.sample
    @display = @random
  end

  def new
  end

  def create
      Study.create(question:params["studies"]["question"],answer:params["studies"]["answer"],category_id:params["studies"]["category_id"])
      redirect_to "/"
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
end
