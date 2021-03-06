class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update]

  # GET /steps
  # GET /steps.json
  def index
    @steps = Step.where(challenge_id: params[:challenge_id])
  end

  # GET /steps/1
  # GET /steps/1.json
  def show

  end

  # GET /steps/new
  def new
    @steps = Step.new
    #@challenge = Challenge.find(params[:user_id])
    #@challenge = UserChallenge.
    #@challenge = Challenge.find(params[:user_id])
    #@step = @challenge.steps.new
  end

  # GET /steps/1/edit
  def edit
  end

  # POST /steps
  # POST /steps.json
  def create
    @step = Step.new(step_params)

    respond_to do |format|
      if @step.save
        format.html { redirect_to @step, notice: 'Step was successfully created.' }
        format.json { render :show, status: :created, location: @step }
      else
        format.html { render :new }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /steps/1
  # PATCH/PUT /steps/1.json
  def update
    respond_to do |format|
      if @step.update(step_params)
        format.html { redirect_to @step, notice: 'Step was successfully updated.' }
        format.json { render :show, status: :ok, location: @step }
      else
        format.html { render :edit }
        format.json { render json: @step.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /steps/1
  # DELETE /steps/1.json
  def destroy
    #@step = Step.find(params[:id])
    @user_challenge = current_user.user_challenges.find(params[:challenge_id])
    #@user_challenge = UserChallenge.find
    #@user_challenge = UserChallenge.find(params[:challenge_id]).find(params[:id])
    #@user_challenge current_user.user_challenges_for(@challenge).find(params[:id])
    @user_challenge.destroy
    redirect_to user_challenge_path, notice: 'user_challenge was successfully destroyed.'
    #@step.destroy
    #redirect_to steps_url, notice: 'ucs was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_step
      @step = Step.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def step_params
      params.require(:step).permit(:challenge_id, :name, :completed, :description, :id)
    end
end
