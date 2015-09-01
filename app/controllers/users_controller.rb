class UsersController < ApplicationController
	
	# stuff goes here?

	def index
		@users = User.all
		# render json: @users
	end

	def new
		# look at sessions_controller#index
	end

	def create
		user = User.create(user_params)
		if user.save 
			session[:user_id] = user.id

			# if an adventure was created and stored in session, save it to DB after a successful user registration
			if session[:new_adventure].present?
				save_adventure = session[:new_adventure]
				session.delete(:new_adventure) # delete the session
	      save_adventure[:user_id] = user.id
	      Adventure.create(save_adventure)
			end

			redirect_to new_adventure_path
		else
			flash[:create] = user.errors.full_messages
			redirect_to login_path
			# keeps going to /users instead of /signup when rendering the template
		end
		# else
		# end
	end

	def show
		if session[:user_id]
			@user = User.find(session[:user_id])
		else
			flash[:error] = "Log in first dude"
			redirect_to login_path
		end
	end

	def edit
	end

	def destroy
	end

	private
		def user_params
			params.require(:user).permit(:username,:password,:password_confirmation)
		end
end