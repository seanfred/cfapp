class AnswersController < ApplicationController

  before_filter :find_the_question
  # GET /answers
  # GET /answers.json
  def index
    @answers = @question.answers
  end

  # GET /answers/1
  # GET /answers/1.json
  def show
    @answer = @question.answers.find(params[:id])
  end

  # GET /answers/new
  def new
    @answer = @question.answers.new
  end

  # GET /answers/1/edit
  def edit
    @answer = @question.answers.find(params[:id])
  end

  # POST /answers
  # POST /answers.json
  def create
    @answer = @question.answers.new(answer_params)

    respond_to do |format|
      if @answer.save
        format.html { redirect_to question_answer_path(@question), notice: 'Answer was successfully created.' }
        format.json { render action: 'show', status: :created, location: @answer }
      else
        format.html { render action: 'new' }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /answers/1
  # PATCH/PUT /answers/1.json
  def update
    @answer = @question.answers.find(params[:id])
    respond_to do |format|
      if @answer.update_attributes(answer_params)
        format.html { redirect_to question_answer_path(@question), notice: 'Answer was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @answer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /answers/1
  # DELETE /answers/1.json
  def destroy
    @answer = @question.answers.find(params[:id])
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to question_answers_path(@question) }
      format.json { head :no_content }
    end
  end

  private

    def find_the_question
      @question = Question.find(params[:question_id])
    end

    # Use callbacks to share common setup or constraints between actions.
    # def set_answer
    #   @answer = Answer.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def answer_params
      params.require(:answer).permit(:user_id, :question_id, :body, :created_at, :updated_at)
    end
end
