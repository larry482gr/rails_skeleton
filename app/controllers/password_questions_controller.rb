class PasswordQuestionsController < ApplicationController
  before_action :set_password_question, only: [:show, :edit, :update, :destroy]

  # GET /password_questions
  # GET /password_questions.json
  def index
    @password_questions = PasswordQuestion.all
  end

  # GET /password_questions/1
  # GET /password_questions/1.json
  def show
  end

  # GET /password_questions/new
  def new
    @password_question = PasswordQuestion.new
  end

  # GET /password_questions/1/edit
  def edit
  end

  # POST /password_questions
  # POST /password_questions.json
  def create
    @password_question = PasswordQuestion.new(password_question_params)

    respond_to do |format|
      if @password_question.save
        format.html { redirect_to @password_question, notice: 'Password question was successfully created.' }
        format.json { render :show, status: :created, location: @password_question }
      else
        format.html { render :new }
        format.json { render json: @password_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /password_questions/1
  # PATCH/PUT /password_questions/1.json
  def update
    respond_to do |format|
      if @password_question.update(password_question_params)
        format.html { redirect_to @password_question, notice: 'Password question was successfully updated.' }
        format.json { render :show, status: :ok, location: @password_question }
      else
        format.html { render :edit }
        format.json { render json: @password_question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /password_questions/1
  # DELETE /password_questions/1.json
  def destroy
    @password_question.destroy
    respond_to do |format|
      format.html { redirect_to password_questions_url, notice: 'Password question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_password_question
      @password_question = PasswordQuestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def password_question_params
      params.require(:password_question).permit(:question)
    end
end
