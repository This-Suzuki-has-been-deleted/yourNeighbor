class AnswerController < ApplicationController
  def create
    answer = params.require(:answer).permit(:text,:question_id).merge(email: current_user.email,username: current_user.username)
    check = Answer.create(answer)
    if check.save
      redirect_to questions_path, notice: '登録しました。'
    else
      redirect_to questions_path, notice: '登録に失敗しました。'
    end

  end

  # GET /answer/1/edit
  def edit
    @answer = Answer.find(params[:id])
  end

  # PATCH/PUT /answer/1
  # PATCH/PUT /answer/1.json
  def update
    @answer = Answer.find(params[:id])
    answer = params.require(:answer).permit(:text).merge(email: current_user.email)
    Answer.where('id = ?',@answer.id).update(answer)
    redirect_to questions_path, notice: '更新しました。'
  end

  # DELETE /Answers/1
  # DELETE /Answers/1.json
  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: '回答を削除しました。' }
      format.json { head :no_content }
    end
  end

end
