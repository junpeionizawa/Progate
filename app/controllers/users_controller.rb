class UsersController < ApplicationController
  PER = 4
  def index
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    @sections = Section.all
    # page(params[:page]).per(4)
    @questions = @user.questions
  end
  def edit
     @user = User.find(params[:id])
  end

  def update
     @user = User.find(params[:id])
     @user.update(user_params)
     redirect_to user_path(@user.id)
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
