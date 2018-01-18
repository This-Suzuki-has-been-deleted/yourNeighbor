class QuestionController < ApplicationController
  # 一覧画面
  def index
    @question = Question.all
  end

  # 詳細画面
  def show
  end

  # 新規作成画面
  def new
  end

  # 新規作成処理 view無し
  def create
  end

  # 削除処理
  def destroy
  end

end
