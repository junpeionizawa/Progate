class SectionsController < ApplicationController
  PER = 5
  before_action :authenticate_user!
  def index
    @sections = current_user.sections.page(params[:page]).per(PER)
  end

  def show
    # @section = Section.find(params[:id])
    @section = Section.with_deleted.find(params[:id])
    @user = current_user
  end

  def edit
    @section = Section.find(params[:id])
    @user = current_user
  end

  def new
    @section =Section.new
    @user = current_user
  end

  def create
    @section = Section.new(section_params)
    @section.user_id = current_user.id
    @section.save
    @user = current_user
    @user.experience += 10
    if @user.experience >= 150
       @user.level += 1
       @user.experience -= 150
    end
    @user.save
    redirect_to user_path(current_user)
  end

  def destroy
   @section = Section.find(params[:id])
   @section.destroy
   redirect_to user_path(current_user)
  end

  private
  def section_params
      params.require(:section).permit(:user_id,:question_id,:question_sentence,:answer,:mistake,:otherwise)
  end
end


