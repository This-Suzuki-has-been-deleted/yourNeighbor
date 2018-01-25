class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /question
  # GET /question.json
  def index
    @questions = Question.all
    @newQuestion = Question.new
  end

  # GET /question/1
  # GET /question/1.json
  def show
    @question = Question.find(params[:id])
    @newAnswer = Answer.new(:question_id => params[:id])
    @Answers = Answer.where(question_id: params[:id])
  end

  # GET /question/new
  def new
    @question = Question.new
    @question.save
  end

  # GET /question/1/edit
  def edit
  end

  # question /question
  # question /question.json
  def create
    @question = Question.new(params[:question].permit(:title, :text, :tag1, :tag2, :tag3 ))
    @question.save
    redirect_to questions_path
    # @question = Question.new(question_params)
    #
    # respond_to do |format|
    #   if @question.save
    #     format.html { redirect_to @question, notice: 'Question was successfully created.' }
    #     format.json { render :show, status: :created, location: @question }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @question.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  def delete
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_index_path
  end



  # PATCH/PUT /question/1
  # PATCH/PUT /question/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /question/1
  # DELETE /question/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:title, :content)
    end
end
