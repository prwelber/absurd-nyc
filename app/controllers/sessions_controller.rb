class SessionsController < ApplicationController

	def index
		if session[:user_id]
			redirect_to new_adventure_path
		else
			@user = User.new
		end
	end

	def new 

	end

	def create
		# for LOGIN form
		user = User.find_by("username ~* ?", params[:username])
		if user && user.authenticate(params[:password])
			session[:user_id] = user.id 

			# save adventure if existing user logged in after creating an adventure
			if session[:new_adventure].present?
				save_adventure = session[:new_adventure]
				session.delete(:new_adventure) # delete the session
	      save_adventure[:user_id] = user.id
	      Adventure.create(save_adventure)
			end

			redirect_to user_adventures_path(session[:user_id])
		else
			flash[:error] = "Incorrect Username/Password"
			redirect_to login_path
		end
	end

	def destroy
		session.clear
		redirect_to login_path
	end

	private
		def user_params
			params.require(:user).permit(:username,:password)
		end

end