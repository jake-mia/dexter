class UsersController < ApplicationController
#before_action :authorize, only: [:index]
#before_action :authorize :redirect_unless_logged_in, only: [:show, :edit]

# this could be the unloggedin page if you want one
def index
   if current_user
     @user = current_user
     @user_challenges = @user.user_challenges.group(:challenge)
   end

end

def signup
end

def send_message(phone_number, alert_message)
   twilio_number = ENV['TWILIO_NUMBER']
   client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']

   client.messages.create(
         from: twilio_number,
         to:   phone_number,
         body: alert_message,
        #  US phone numbers can make use of an image as well
        #  media_url: image_url
       )

end

def create_txt_msg
  var = UserChallenge.all
  var.each do |row|
  step_time = row["complete_by"].to_datetime
  #happens in the future but only 30 min into the future
  if step_time > DateTime.now && step_time < DateTime.now + 10.minutes
    #puts "hit the window of time!! yay!"
    fullstep = Step.find(row["step_id"])
    txtmsg = fullstep.Tmsg
    fulluser = User.find(row["user_id"])
    phone = fulluser.phone
    #puts phone
    txtmsg = "Hi #{fulluser.firstname}, It's Dexter. " + txtmsg
    #puts txtmsg
    send_message(phone, txtmsg)
  else
    puts "outside the window"
  end
end
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
