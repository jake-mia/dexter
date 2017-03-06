class UserchallengesController < ApplicationController
  #session[:user_id] = user.id


  def enroll
    @user_id = current_user
    @challenges = Challenge.all
    @userchallenge = UserChallenge.new
  end

  def create
    @userchallenge = current_user.user_challenges.create!(userchallenge_params)
    #create the steps
    challenge = Challenge.find(params[:user_challenge][:challenge_id])
    message = "challenge is nil!!!"
    raise new RuntimeError.new message if challenge.nil?
    challenge_name = challenge.name
    step_args  = {
      "Health Eating" => [
          {
            name: "foo",
            description: "foo info",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "bar",
            description: "bar info",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "waz",
            description: "waz info",
            completed: false,
            complete_by: Time.now.utc
          },
        ], # end of first set of steps args
      "Fitness" => [
        {
          name: "foo Fitness",
          description: "foo Fitness info",
          completed: false,
          complete_by: Time.now.utc
        },
        {
          name: "bar Fitness",
          description: "bar Fitness info",
          completed: false,
          complete_by: Time.now.utc
        },
        {
          name: "waz Fitness",
          description: "waz Fitness info",
          completed: false,
          complete_by: Time.now.utc
        },
      ],
    }.fetch(challenge_name)
    user = User.find(session[:user_id])
    step_args.each do |args|
      # challenge = Challenge.find_by(name: challenge_name)
      user_challenge = UserChallenge.find_by(challenge: challenge, user: user)
      #user_challenge = UserChallenge.last
      message = "user challenge is nil!!!"
      raise RuntimeError.new message if user_challenge.nil?
      args[:challenge] = user_challenge.challenge
      Step.create(args)
    end
    redirect_to root_path, notice: "Challenge Accepted!"
  end

  private

    def userchallenge_params
      params.require(:user_challenge).permit(:challenge_id)
    end

end
