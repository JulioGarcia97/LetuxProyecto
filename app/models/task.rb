class Task < ApplicationRecord
	has_many :todo_task
	belongs_to :user
end
