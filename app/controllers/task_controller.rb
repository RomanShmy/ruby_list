class TaskController < ApplicationController
  def index
    @tasks = Task.all
  end

  def changeDone
    isPresent = Task.exists?(params[:id])
    if isPresent
      @task = Task.find(params.id)
      @task.done = done_param
      @task.save
    end
  end


  private
  def done_param
    params.permit(:done)
  end
end
