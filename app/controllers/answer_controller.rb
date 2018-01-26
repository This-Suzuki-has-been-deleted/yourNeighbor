class AnswerController < ApplicationController
  def create
    @answer = Answer.new(params[:answer].permit(:question_id, :email, :text))
    @answer.save
    redirect_to questions_show_path(params[:answer]['question_id'])
  end

  def delete
    @answer = Answer.find(params['question_id'])
    @answer.destroy
    redirect_to questions_index_path
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
