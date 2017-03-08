class UserChallengesController < ApplicationController
  before_action :set_user_challenge, only: [:show]

  def index

  end

  def show
    @steps = Step.where(challenge_id: params[:challenge_id])
  end

  def new
    @user_id = current_user
    @challenges = Challenge.all
    @userchallenge = UserChallenge.new
  end

  def create
    # @userchallenge = current_user.user_challenges.create!(userchallenge_params)
    challenge = Challenge.find(params[:user_challenge][:challenge_id])
    challenge.steps.each do |step|
      UserChallenge.create(user: current_user, challenge: challenge, step: step)
    end
    redirect_to root_path, notice: "Challenge Accepted!"
  end

  private

    def set_user_challenge
      @user_challenge = UserChallenge.find(params[:id])
    end

    def userchallenge_params
      params.require(:user_challenge).permit(:challenge_id)
    end
end
