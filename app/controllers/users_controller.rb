class UsersController < ApplicationController
#before_action :authorize, only: [:index]
#before_action :authorize :redirect_unless_logged_in, only: [:show, :edit]
require 'twilio-ruby'
# this could be the unloggedin page if you want one
def index
   if current_user
     @user = current_user
     @user_challenges = @user.user_challenges.group(:challenge)

     @challenges = @user.challenges
     @var = current_user
     @phone = @var.phone
     @alert = "Welcome to the Dexter app!"
     @img = ""
     #send_message(@phone, @alert, @img)
   end

end

def signup
end

def send_message(phone_number, alert_message, img_url)
   twilio_number = ENV['TWILIO_NUMBER']
   client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']

   client.messages.create(
         from: twilio_number,
         to:   phone_number,
         body: alert_message,
        #  US phone numbers can make use of an image as well
        #  media_url: image_url
       )

  #alert_message = "<<MSG
  #Hello from Dexter!
  #Go to: http://dexter.com for more details.
  #MSG"

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
      params.require(:user).permit(:firstname, :lastname, :email, :password, :password_confirmation, :phone)
    end

    # def redirect_unless_logged_in
    #       unless is_logged_in?
    #         redirect_to root_path
    #       end
end
