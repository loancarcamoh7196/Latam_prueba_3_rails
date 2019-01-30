class TodosController < ApplicationController
    def index
        @todos = Todo.all
    end
    
    def new
        @todo = Todo.new
    end
    
    def create
        @todo = Todo.new(todo_params)
        @todo.completed ? true : false
        @todo.save
        redirect_to todos_path, notice: 'Se ha agregado To do! exitosamente...'
    end

    def show
        @todo = Todo.find(params[:id])
    end

    
    private
    def todo_params
        params.require(:todo).permit(:description, :completed)
    end
end
