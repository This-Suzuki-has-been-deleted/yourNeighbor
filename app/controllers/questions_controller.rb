class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  # GET /question
  # GET /question.json
  def index
    @question = Question.all
    @newQuestion = Question.new
  end

  # GET /question/1
  # GET /question/1.json
  def show
    idx = params[:id]
    @question = Question.find(params[:id])
    @newAnswer = Answer.new(:question_id => params[:id])
    @Answers = Answer.where(question_id: idx)
  end

  # GET /question/new
  def new
    @question = Question.new
  end

  # GET /question/1/edit
  def edit
    @question = Question.find(params[:id])
  end

  # question /question
  # question /question.json
  def create
    question = params.require(:question).permit(:title, :text, :tag1, :tag2, :tag3 ).merge(email: current_user.email)
    check = Question.create(question)
    if check.save
      redirect_to questions_path, notice: '登録しました。'
    else
      redirect_to questions_path, notice: '登録に失敗しました。'
    end
  end

  def delete
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to questions_path
  end



  # PATCH/PUT /question/1
  # PATCH/PUT /question/1.json
  def update
   question = params.require(:question).permit(:title, :text, :tag1, :tag2, :tag3 )
   check = Question.update(@question.title == :title)
   if check.save
     redirect_to questions_path, notice: '登録しました。'
   else
     redirect_to questions_path, notice: '登録に失敗しました。'
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

#     # Never trust parameters from the scary internet, only allow the white list through.
#     def question_params
#       params.require(:question).permit(:title, :text,:tag1,:tag2,:tag3)
#     end
end
