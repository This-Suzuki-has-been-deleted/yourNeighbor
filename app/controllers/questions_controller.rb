class QuestionsController < ApplicationController
  # GET /question
  # GET /question.json
  def index
    @keyword = Question.ransack(params[:q])
    @question= @keyword.result
    @newQuestion = Question.new
  end

  # GET /question/1
  # GET /question/1.json
  def show
    idx = params[:id]
    @question = Question.find(params[:id])
    @newAnswer = Answer.new(:question_id => params[:id])
    @Answers = Answer.where(question_id: idx)
    @answer = Answer.all
  end

  # GET /question/new
  def new
    @question = Question.new
  end

  # GET /question/1/edit
  def edit
    @question=Question.find(params[:id])
  end

  # question /question
  # question /question.json
  def create
    question = params.require(:question).permit(:title, :text, :tag1, :tag2, :tag3 ).merge(email: current_user.email)
    check = Question.create(question)
    if check.save
      redirect_to questions_path, notice: '登録しました。'
    else
      redirect_to new_question_path, notice: 'タイトル又は質問内容が入力されていない可能性があります。'
    end
  end




  # PATCH/PUT /question/1
  # PATCH/PUT /question/1.json
  def update
    @question = Question.find(params[:id])
    question = params.require(:question).permit(:title, :text, :tag1, :tag2, :tag3)
    Question.where('id = ?',@question.id).update(question)
      redirect_to questions_path, notice: '更新しました。'
  end

  # DELETE /question/1
  # DELETE /question/1.json
  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: '削除しました。' }
      format.json { head :no_content }
    end
  end

  # URL直打ちによる不正なアクセスに対応
  def auth_user
    question = Question.find(params[:id])
    if current_user.user_type != "admin" && current_user.email != question.email
      flash[:notice] = "権限がありません"
      redirect_to questions_path
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:title, :text,:tag1,:tag2,:tag3)
    end
end
