class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  belongs_to :step
  validates :user_id, uniqueness: {scope: [:challenge_id, :step_id]}



  after_create :reminder


  @@REMINDER_TIME = 30.minutes # minutes before appointment

   def reminder
     #create the row in the Delayed_Jobs table
     #get the 3 variables we need to schedule the text msg
     var = UserChallenge.last
    #  user = var.user_id
    #  myuser = User.find(user)
    #  #var = current_user
    #  @phone = myuser.phone
     steptoprocess = var.step_id
     var2 = Step.find(steptoprocess)
     @alert = var2.Tmsg
    #  @msg_time = var2.complete_by
    #  # @msg_time = step.complete_by
    #  puts "alert #{@alert}"
    #  puts "phone #{@phone}"
    #  puts "complete_by #{@msg_time}"


       @twilio_number = ENV['TWILIO_NUMBER']
       @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
       time_str = ((self.complete_by).localtime).strftime("%I:%M%p on %b. %d, %Y")
       txt_msg = self.Tmsg
       message = @client.account.messages.create(
         :from => @twilio_number,
         :to => self.phone,
         :body => txt_msg,
       )
       puts message.to



   end #enddef

     def when_to_run
       complete_by - @@REMINDER_TIME
     end

     #only create a text reminder if the Tmsg contains text
     if @alert != ""
       handle_asynchronously :reminder, :run_at => Proc.new { |i| i.when_to_run }
     end

  end
