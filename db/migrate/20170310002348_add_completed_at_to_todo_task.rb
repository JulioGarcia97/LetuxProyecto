class AddCompletedAtToTodoTask < ActiveRecord::Migration[5.0]
  def change
    add_column :todo_tasks, :completed_at, :datetime
  end
end
