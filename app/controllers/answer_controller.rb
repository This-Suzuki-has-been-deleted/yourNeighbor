class QuestionController < ApplicationController
  def create
    @question = Question.new(params[:question].permit(:board_id, :name, :body))
    @question.save
    redirect_to boards_show_path(params[:question]['board_id'])
  end

  def delete
    @question = Question.find(params['board_id'])
    @question.destroy
    redirect_to boards_index_path
  end

  # DELETE /Questions/1
  # DELETE /Qustions/1.json
  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to boards_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



end
