class UsersController < ApplicationController
  def index
  end

  def show
    @user = current_user
    @sections = Section.all
    @questions = current_user.questions
  end
  def edit
     @user = User.find(params[:id])
  end

  def update
     user = User.find(params[:id])
     user.update(user_params)
     redirect_to user_path(current_user)
  end

  def destroy
    user = current_user
    user.destroy
    redirect_to root_path
  end
  private
  def user_params
    params.require(:user).permit(:name,:nickname,:profile,:profile_image,:password)
  end
end
