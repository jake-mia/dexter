class UsersController < ApplicationController
#before_action :authorize, only: [:index]
#before_action :authorize :redirect_unless_logged_in, only: [:show, :edit]

# this could be the unloggedin page if you want one
def index
   if current_user
     @user = User.find(session[:user_id])
     @challenges = @user.challenges
   end
  
end

def signup
end

def create

  user = User.new(user_params)
        if user.password != user.password_confirmation
          flash[:notice] = "Can't proceed, passwords don't match."
          redirect_to '/signup'
        elsif user.save
              session[:user_id] = user.id
              redirect_to '/'
        else
          flash[:notice] = "Couldn't save to db, probably exists already."
          redirect_to '/signup'
        end

end

  private

    def user_params
      params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation)
    end

    # def redirect_unless_logged_in
    #       unless is_logged_in?
    #         redirect_to root_path
    #       end
  end
