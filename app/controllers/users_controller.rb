class UsersController < ApplicationController
skip_before_action :require_user, only: [:new, :create]

	def index
		@users = User.all
	end
  
  def show
    @users = User.find_by(id: params["id"])
  end

	def new
		@users = User.new
	end

	def create
		users_params = params.require(:user).permit!
		User.create(users_params)
		redirect_to root_path, notice: "Welcome to PackIT!"
	end

	def edit
		@users = User.find_by(id: params["id"])
	end
	
	def update
		user_params = params.require(:user).permit!
		@users = User.find_by(id: params["id"])
		@users.update(user_params)
		redirect_to users_path
	end
		
	def destroy
		@users = User.find_by(id: params["id"])
		@users.delete
		redirect_to users_path
	end
		
end

