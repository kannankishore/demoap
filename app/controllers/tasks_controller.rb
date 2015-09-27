class TasksController < ApplicationController
  def index
  @tasks = Task.order(:description).limit(3)

     if rand(0..2).zero?
       @fruit = 'banana'
     else
       @fruit = 'apple'
     end
  end

  def show
    @task = Task.find(params[:id])
  end
end
