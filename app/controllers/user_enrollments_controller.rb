class UserEnrollmentsController < ApplicationController
  before_filter :check_logged_in_user, except: [:index, :delete_user]
  before_action :set_user_enrollment, only: [:show, :edit, :update, :destroy]

  # GET /user_enrollments
  # GET /user_enrollments.json
  def index
    @user_enrollments = UserEnrollment.all
  end

  # GET /user_enrollments/1
  # GET /user_enrollments/1.json
  def show
    if @user_enrollments.user_id != current_user.id
      redirect_to edit_user_enrollment_path
    end
  end

  # GET /user_enrollments/new
  def new
    if current_user.user_enrollment
      redirect_to new_user_enrollment_path
    else
      @user_enrollment = UserEnrollment.new
    end
  end

  # GET /user_enrollments/1/edit
  def edit
  end

  # POST /user_enrollments
  # POST /user_enrollments.json
  def create
    @user_enrollment = UserEnrollment.new(user_enrollment_params)
    @user_enrollments.user_id != current_user.id
    respond_to do |format|
      if @user_enrollment.save
        format.html { redirect_to @user_enrollment, notice: 'User enrollment was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_enrollment }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_enrollments/1
  # PATCH/PUT /user_enrollments/1.json
  def update
    respond_to do |format|
      if @user_enrollment.update(user_enrollment_params)
        format.html { redirect_to @user_enrollment, notice: 'User enrollment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_enrollment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_enrollments/1
  # DELETE /user_enrollments/1.json
  def destroy
    @user_enrollment.destroy
    respond_to do |format|
      format.html { redirect_to user_enrollments_url }
      format.json { head :no_content }
    end
  end

  def delete_user
    user_id = params[:format]
    User.find(user_id).destroy
    redirect_to user_sessions_path
  end

    private


    def check_logged_in_user
      if !current_user
        redirect_to new_user_session_path
      end
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_user_enrollment
      if current_user
        @user_enrollment = current_user.user_enrollment
      else
        @user_enrollment = UserEnrollment.find(params[:id])
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_enrollment_params
      params.require(:user_enrollment).permit(:user_id, :offering_id, :status, :created_at,
       :updated_at, :unsaved_changes)
    end
  end
