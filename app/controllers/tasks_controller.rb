class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]
  # after_action :redirect_to_index, only: [:create, :update]

  def index
    @tasks = Task.all
  end

  def show
    set_task
    @complete = @task.completed ? "Completed" : "Incomplete"
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    redirect_to task_path(@task)
  end

  def edit
  end

  def update
    @task.update(task_params)
    redirect_to tasks_path

  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def set_task
    @task = Task.find(params[:id])
  end

  def redirect_to_index
    redirect_to tasks_path
  end
end
