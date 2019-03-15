class QuestionsController < ApplicationController
  def index
    @question = Question.all
  end

  def show
    @questions = Question.all
  end

  def edit
  end

  def new
   
  end

  def create

  end

  def destroy
  end

  def update
  end

  private
    def question_params
    params.require(:question).permit(:user_id, :question_status,
      sections_attributes: [:id, :question_sentence,:answer,:_destroy,
      choices_attributes: [:id, :select, :_destroy]])
    end

end
