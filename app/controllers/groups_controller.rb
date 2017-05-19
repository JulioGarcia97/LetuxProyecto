class GroupsController < ApplicationController

	def index
		@users = User.all
	end

	def toggle_status
	end
end
