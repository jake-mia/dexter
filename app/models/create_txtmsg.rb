# Run this every 30 minutes from cron or heroku scheduler at :05 and :35 after
require 'active_record'
require 'twilio-ruby'
require 'pg'

ActiveRecord::Base.establish_connection(
  adapter:  'postgresql', # or 'postgresql' or 'sqlite3'
  database: 'dexter-dev',
  username: 'user',
  password: '',
  host:     'localhost'
)

def send_message(phone_number, alert_message)
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

class Step < ActiveRecord::Base
end

class User < ActiveRecord::Base
end

class UserChallenge < ActiveRecord::Base
#sql_string = "select * from user_challenges"
#results = ActiveRecord::Base.connection.exec_query(sql_string)
var = UserChallenge.all
var.each do |row|
step_time = row["complete_by"].to_datetime
#happens in the future but only 30 min into the future
  if step_time > DateTime.now && step_time < DateTime.now + 30.minutes
    puts "hit the window of time!! yay!"
    fullstep = Step.find(row["step_id"])
    txtmsg = fullstep.Tmsg
    fulluser = User.find(row["user_id"])
    phone = fulluser.phone
    puts phone
    txtmsg = "Hi #{fulluser.firstname}, It's Dexter. " + txtmsg
    puts txtmsg
    send_message(phone, txtmsg)
  else
    puts "outside the window"
  end
end
end

# results.each do |row|
# if row["complete_by"].to_i < Date.today.to_i
#   send_message
#   sql_string2 = "update user_challenges set completed = true where user_id = #{row['user_id']}"
#   ActiveRecord::Base.connection.exec_query(sql_string2)
# end
# end
#puts '---------------------------'
#puts results[0]["id"]
