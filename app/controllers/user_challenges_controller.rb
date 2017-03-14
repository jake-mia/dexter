class UserChallengesController < ApplicationController
  before_action :set_user_challenge, only: [:update]

  def index

  end

  def show
    #@user_challenge = UserChallenge.find(params[:id])
    @steps = Step.where(challenge_id: params[:challenge_id])
    redirect_to root_path
  end

  # GET /user_challenges/1/edit
  def edit
    #@step = Step.find(params[:id])
    @userchallenge = userchallenge.find(params[:user_id])
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
      UserChallenge.create(user: current_user, challenge: challenge, step: step, complete_by: step.complete_by, completed: step.completed)
    end
    redirect_to root_path, notice: "Challenge Accepted!"
  end
  # PATCH/PUT /userchallenges/1
  # PATCH/PUT /userchallenges/1.json
  def update
      if @user_challenge.update(userchallenge_params)
        redirect_to @user_challenge.challenge, notice: 'userchallenge was successfully updated.'
      else
        render :edit
      end
  end

  def destroy
    @user_challenge.destroy
    redirect_to user_challenge_path, notice: 'user_challenge was successfully destroyed.'
  end

  private

    def set_user_challenge
      @user_challenge = UserChallenge.find(params[:id])
    end

    def userchallenge_params
      params.require(:user_challenge).permit(:challenge_id, :user_id, :step_id, :completed, :complete_by, :completed_time)
    end
end
