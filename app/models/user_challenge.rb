class UserChallenge < ApplicationRecord
  belongs_to :user
  belongs_to :challenge
  belongs_to :step
  validates :user_id, uniqueness: {scope: [:challenge_id, :step_id]}

  # def reminder
  #     @twilio_number = ENV['TWILIO_NUMBER']
  #     @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
  #     time_str = ((@msg_time).localtime).strftime("%I:%M%p on %b. %d, %Y")
  #     txt_msg = @alert
  #     message = @client.account.messages.create(
  #       :from => @twilio_number,
  #       :to => @phone,
  #       :body => txt_msg,
  #     )
  #     puts message.to
  #   end
  #
  #   def when_to_run
  #     time - @@REMINDER_TIME
  #   end

  # #create the row in the Delayed_Jobs table
  # @var = User.find(session[:user_id])
  # @phone = @var.phone
  # @alert = step.Tmsg
  # @msg_time = step.complete_by
  # self.reminder
  # handle_asynchronously :reminder, :run_at => Proc.new { |i| i.when_to_run }
end
