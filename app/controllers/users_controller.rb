class UsersController < ApplicationController
before_action :authorize, only: [:index]
#before_action :authorize :redirect_unless_logged_in, only: [:show, :edit]

# this could be the unloggedin page if you want one
def index
end

def new
end

def create
  user = User.new(user_params)
      if user.save
        session[:user_id] = user.id
        redirect_to '/'
      else
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
