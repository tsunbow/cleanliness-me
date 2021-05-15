class TasksController < ApplicationController
  before_action :set_task, only: [:index, :create]
  before_action :authenticate_user!, only: [:index, :create]

  def index
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to cleans_index_path
    else
      render root_path
    end
  end

  private

  def task_params
    params.require(:task).permit(:image2, :run_time, :run_content, :takeover, :note).merge(user_id: current_user.id,
                                                                                           clean_id: params[:clean_id])
  end

  def set_task
    @clean = Clean.find(params[:clean_id])
  end

end
