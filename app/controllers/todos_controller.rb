class TodosController < ApplicationController
    def index
        @todos = Todo.all
    end
    
    def new
        @todo = Todo.new
    end
    
    def create
        @todo = Todo.new(todo_params)
        @todo.completed == 1 ? true : false
        @todo.save
        redirect_to todos_path, notice: 'Se ha agregado To do! exitosamente...'
    end

    def show
        @todo = Todo.find(params[:id])
    end

    def edit
        @todo = Todo.find(params[:id]) 
    end

    def update
        @todo = Todo.find(params[:id])
        @todo.update(todo_params)
        redirect_to todos_path, notice: 'Se ha actualizado To do seleccionado!'
    end
    
    def destroy
       @todo = Todo.find(params[:id])
       @todo.delete
       redirect_to todos_path, notice: 'Se ha eliminado To do seleccionado!'
    end

    def complete
        @todo = Todo.find(params[:id])
        todo = @todo.attributes
        todo[:completed] = true
        @todo.update(todo)
        redirect_to todos_path        
    end 
        
    private
    def todo_params
        params.require(:todo).permit(:description, :completed)
    end
end
