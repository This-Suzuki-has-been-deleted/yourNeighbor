class AnswerController < ApplicationController
  def create
    @answer = Answer.new(params[:answer].permit(:board_id, :name, :body))
    @answer.save
    redirect_to boards_show_path(params[:answer]['board_id'])
  end

  def delete
    @answer = Answer.find(params['board_id'])
    @answer.destroy
    redirect_to boards_index_path
  end

  # DELETE /Answers/1
  # DELETE /Answers/1.json
  def destroy
    @answer.destroy
    respond_to do |format|
      format.html { redirect_to boards_url, notice: 'Answer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



end
