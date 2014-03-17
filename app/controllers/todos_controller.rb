class TodosController < ApplicationController
  def new
    @todo = Todo.new(user_id: params[:id])
  end

  def create
    @todo = Todo.create(todo_params)

    redirect_to user_path(id: @todo.user_id)
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update(todo_params)

    redirect_to user_path(id: @todo.user_id)
  end


  def destroy
    @todo = Todo.find(params[:id])
    @todo.delete

    redirect_to users_path
  end

  def todo_params
    params.require(:todo).permit(:name, :remarks, :status, :user_id)
  end

end
