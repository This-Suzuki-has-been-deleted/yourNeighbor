class AnswerController < ApplicationController
  def create
    answer = params.require(:answer).permit(:text).merge(email: current_user.username,questions_id: current_questions.id)
    check = Answer.create(answer)
    if check.save
      redirect_to questions_path, notice: '登録しました。'
    else
      redirect_to questions_path, notice: '登録に失敗しました。'
    end

  end

  def delete
    @answer = Answer.find(params['question_id'])
    @answer.destroy
    redirect_to questions_path
  end

  # DELETE /Answers/1
  # DELETE /Answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



end
