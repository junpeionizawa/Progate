class QuestionsController < ApplicationController
  def index
    @questions = current_user.questions

  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
  end

  def new
    # ログインuserのidを持ったquestionテーブルを作る
   @question = Question.new(user_id: current_user.id)
   @question.save
   # sectionをランダムに持ってくる
   @sections = Section.offset(rand(Section.count)).first(1)
      @sections.each do |section|
        @question_section = QuestionSection.new(section_id: section.id,question_id: @question.id)
        @question_section.save
      end
  end

  def create
      @question = Question.find(params[:question_id])
      @user_section =UserSection.new(user_section_params)
      @user_section.user_id = current_user.id
      @user_section.section_id = params[:section_id]
      @user_section.save
      # # @user_section = UserSection.find_by(section_id: params[:section_id],user_id:current_user.id)
      # # Section.where(user_id: current_user.id)
      # # # @section = Section.where(user_id: current_user.id)
      @section = Section.find(params[:section_id])
        if @user_section.useranswer == @section.answer
           @user_section.testscore += 20
           @user_section.save
           redirect_to question_path(@question.id)
        else
          redirect_to question_path(@question.id)
        end
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

    def user_section_params
     params.require(:user_section).permit(:useranswer)
    end

end
