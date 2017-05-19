class NoticesController < ApplicationController
	before_action :set_notice, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!
	access all: [:show, :index], user: {except: [:new, :create, :edit, :update, :destroy]}, site_admin: :all

	def index
		@notices = Notice.all.order('created_at DESC')
	end

	def new
		@notice = current_user.notice.build
	end

	def create
		@notice = current_user.notice.build(notice_params)
		if @notice.save
			redirect_to notices_path
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @notice.update(notice_params)
			redirect_to notices_path
		else
			render :edit
		end
	end

	def show
	end

	def destroy
		@notice.destroy
		redirect_to notices_path
	end

	private

	def set_notice
		@notice = Notice.find(params[:id])
	end

	def notice_params
		params.require(:notice).permit(:title, :description)
	end

end
