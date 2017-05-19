class CreateTodoTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :todo_tasks do |t|
      t.string :content
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
