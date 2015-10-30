class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end
  
  def create
    Todo.create(todo_params)
    redirect_to root_path
  end
  
  def destroy
    todo = Todo.find(params[:id]).destroy
  end
  
  private
    def todo_params
      params.require(:todo).permit(:description, :priority)
    end
    
end
