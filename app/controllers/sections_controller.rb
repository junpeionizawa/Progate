class SectionsController < ApplicationController
  def index
    @section = Section.all
  end

  def show
    @section = Section.find(params[:id])
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
    @user = User.find(current_user.id)
    @user.experience += 10
    if @user.experience >= 50
       @user.level += 1
       @user.experience -= 50
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
      params.require(:section).permit(:user_id,:question_sentence,:answer,:select1,:select2,:otherwise)
  end
end


