class UserchallengesController < ApplicationController
#session[:user_id] = user.id

  def enroll
    @user_id = User.find(session[:user_id])
    @challenges = Challenge.all
    @userchallenge = UserChallenge.create
  end

  def create
    @userchallenge = UserChallenge.new(userchallenge_params)
  end

end
