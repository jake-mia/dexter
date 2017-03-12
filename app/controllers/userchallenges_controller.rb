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
      "Running Challenge" => [
          {
            name: "Day 1",
            description: "4 minute walk, 1 min run. 3 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 2",
            description: "4 min walk, 1 min run. 4 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 3",
            description: "2 min walk, 2 min run. 2 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 4",
            description: "15 min walk",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 5",
            description: "1 min walk, 10 sec sprint. 5 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 6",
            description: "2 min walk, 2 min run. 3 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 7",
            description: "3 min walk, 2 min run. 3 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 8",
            description: "15 min walk",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 9",
            description: "2 min walk, 2 min run. 4 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 10",
            description: "2 min walk, 10 sec sprint. 5 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 11",
            description: "5 min walk, 2 min run. 4 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 12",
            description: "15 min walk",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 13",
            description: "2 min walk, 3 min run. 3 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 14",
            description: "2 min walk, 2 min run. 4 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 15",
            description: "2 min walk, 20 sec sprint. 5 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 16",
            description: "15 min walk",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 17",
            description: "3 min walk, 3 min run. 4 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 18",
            description: "2 min walk, 3 min run. 4 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 19",
            description: "3 min walk, 3 min run. 5 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 20",
            description: "15 min walk",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 21",
            description: "1 min walk, 1 min run. 5 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 22",
            description: "1 min walk, 2 min run. 3 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 23",
            description: "1 min walk, 3 min run. 3 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 24",
            description: "15 min walk",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 25",
            description: "2 min walk, 25 sec sprint. 5 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 26",
            description: "1 min walk, 4 min run. 3 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 27",
            description: "2 min walk, 4 min run. 4 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 28",
            description: "15 min walk",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 29",
            description: "2 min walk, 5 min run. 3 sets",
            completed: false,
            complete_by: Time.now.utc
          },
          {
            name: "Day 30",
            description: "2 min walk, 5 min run. 4 sets",
            completed: false,
            complete_by: Time.now.utc
          },
        ], # end of first set of steps args
      "Water Challenge" => [
        {
          name: "First glass",
          description: "Drink 12oz!",
          completed: false,
          complete_by: Time.now.utc
        },
        {
          name: "Second Glass",
          description: "Drink 12oz!",
          completed: false,
          complete_by: Time.now.utc
        },
        {
          name: "Third Glass",
          description: "Drink 12oz!",
          completed: false,
          complete_by: Time.now.utc
        },
        {
          name: "Fourth glass",
          description: "Drink 12oz!",
          completed: false,
          complete_by: Time.now.utc
        },
        {
          name: "Fifth Glass",
          description: "Drink 12oz!",
          completed: false,
          complete_by: Time.now.utc
        },
        {
          name: "Sixth Glass",
          description: "Drink 12oz!",
          completed: false,
          complete_by: Time.now.utc
        },
        {
          name: "Seventh glass",
          description: "Drink 12oz!",
          completed: false,
          complete_by: Time.now.utc
        },
        {
          name: "Eight Glass",
          description: "Drink 12oz!",
          completed: false,
          complete_by: Time.now.utc
        }
      ]
    }.fetch(challenge_name)
    user = User.find(session[:user_id])
    step_args.each do |args|
      # challenge = Challenge.find_by(name: challenge_name)
      user_challenge = UserChallenge.find_by(challenge: challenge, user: user)
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
