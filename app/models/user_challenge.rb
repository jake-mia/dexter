class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  belongs_to :step
  validates :user_id, uniqueness: {scope: [:challenge_id, :step_id]}

require 'twilio-ruby'

  def self.send_message(phone_number, alert_message)
     twilio_number = ENV['TWILIO_NUMBER']
     client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']

     client.messages.create(
           from: twilio_number,
           to:   phone_number,
           body: alert_message,
           # US phone numbers can make use of an image as well
           # media_url: image_url
         )

  end

  def self.create_txt_msg
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
      if txtmsg.present?
        txtmsg = "Hi #{fulluser.firstname}, it's Dexter. " + txtmsg
        send_message(phone, txtmsg)
      end
    else
      puts "outside the window"
    end
  end
  end




  end
