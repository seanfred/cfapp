class UserQuestionSetsController < ApplicationController
  before_action :set_user_question_set, only: [:show, :edit, :update, :destroy]

  # GET /user_question_sets
  # GET /user_question_sets.json
  def index
    @user_question_sets = UserQuestionSet.all
  end

  # GET /user_question_sets/1
  # GET /user_question_sets/1.json
  def show
  end

  # GET /user_question_sets/new
  def new
    @user_question_set = UserQuestionSet.new
  end

  # GET /user_question_sets/1/edit
  def edit
  end

  # POST /user_question_sets
  # POST /user_question_sets.json
  def create
    @user_question_set = UserQuestionSet.new(user_question_set_params)

    respond_to do |format|
      if @user_question_set.save
        format.html { redirect_to @user_question_set, notice: 'User question set was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_question_set }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_question_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_question_sets/1
  # PATCH/PUT /user_question_sets/1.json
  def update
    respond_to do |format|
      if @user_question_set.update(user_question_set_params)
        format.html { redirect_to @user_question_set, notice: 'User question set was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_question_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_question_sets/1
  # DELETE /user_question_sets/1.json
  def destroy
    @user_question_set.destroy
    respond_to do |format|
      format.html { redirect_to user_question_sets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_question_set
      @user_question_set = UserQuestionSet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_question_set_params
      params.require(:user_question_set).permit(:user_id, :question_set_id, :created_at, :updated_at, :user_enrollment_id)
    end
end
