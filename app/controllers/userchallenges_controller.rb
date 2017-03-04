class UserchallengesController < ApplicationController
#session[:user_id] = user.id

  def enroll
    @user_id = User.find(session[:user_id])
    @challenges = Challenge.all
    @userchallenge = UserChallenge.new
  end

  def create
    @userchallenge = current_user.user_challenges.create!(userchallenge_params)
    redirect_to root_path, notice: "Challenge Accepted!"
  end

  private

    def userchallenge_params
      params.require(:user_challenge).permit(:challenge_id)
    end

end
