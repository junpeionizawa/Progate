class QuestionsController < ApplicationController
   before_action :authenticate_user!
  def index
    @questions = current_user.questions

  end

  def show
    @question = Question.find(params[:id])
  end

  def edit
  end

  def new
   @user = current_user
   @sections = Section.order("RANDOM()").limit(1)
  end

  def create
       @user = current_user
       @sections = Section.find(params[:section_id])
       @user_section = UserSection.new(user_id: @user.id,section_id: params[:section_id])
       @user_section.useranswer = params[:user_section][:useranswer]
       @user_section.save
       @question = Question.new(user_id:@user.id)
       @question.save

       if  @user_section.useranswer == @user_section.section.answer
         @user_section.testscore += 20
         @user_section.save
         @user.experience += 20

         if @user.experience >= 200
           @user.level += 1
           @user.experience -= 200
         end
         @user.save
         @user_sections = UserSection.where(user_id:@user.id,section_id:params[:section_id])
         @user_sections.each do |user_section|
           @score = Score.new(question_id:@question.id,section_id:@user_section.section_id,testanswer:@user_section.useranswer,point:@user_section.testscore,user_select_answer:@user_section.section.answer)
           @score.save
           user_section.destroy
         end
         redirect_to question_path(@question.id)
       else
        @user_sections = UserSection.where(user_id:@user.id,section_id:params[:section_id])
         @user_sections.each do |user_section|
           @score = Score.new(question_id:@question.id,section_id:@user_section.section_id,testanswer:@user_section.useranswer,point:@user_section.testscore,user_select_answer:@user_section.section.answer)
           @score.save
           user_section.destroy
         end
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
