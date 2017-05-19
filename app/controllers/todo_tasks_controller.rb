class TodoTasksController < ApplicationController
	before_action :set_task
	before_action :set_todo_task, except: [:create]
	access user: {except: [:create, :destroy]}, site_admin: :all

	def create
		@todo_task = @task.todo_task.create(todo_task_params)
		redirect_to @task
	end

	def destroy
		if @todo_task.destroy
			flash[:success] = 'Se elimino correctamente'
		else
			flash[:error] = 'No se pudo eliminar'
		end
		redirect_to @task
	end

	def complete
		@todo_task.update_attribute(:completed_at, Time.now)
		redirect_to @task, notice: 'Se completo la tarea'
	end

	private

	def set_task
		@task = Task.find(params[:task_id])
	end

	def set_todo_task
		@todo_task = @task.todo_task.find(params[:id])
	end

	def todo_task_params
		params[:todo_task].permit(:content)
	end
end
