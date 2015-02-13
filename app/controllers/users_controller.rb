class UsersController < ApplicationController

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
		users_params = params.require(:user).permit(:username)
		User.create(users_params)
		redirect_to users_path
	end

	def edit
		@users = User.find_by(id: params["id"])
	end
	
	def update
		user_params = params.require(:user).permit(:username)
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

