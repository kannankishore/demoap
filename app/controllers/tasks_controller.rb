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

  def hello
    redirect_to(:action => 'index')
  end

   def hello_world
     redirect_to('http://www.google.com')
   end

end
