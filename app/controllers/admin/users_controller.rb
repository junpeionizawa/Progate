class Admin::UsersController < ApplicationController
  before_action :authenticate_user!
  # before_action :only_admin_user
  def index
    @users = User.all
    @sections = Section.all
  end

  def show
  end

  def edit
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to admin_users_path
  end

  def create
  end

  def update
  end

  def new
  end

  private
  def user_params
    params.require(:user).permit(:name,:nickname,:profile,:profile_image,:password)
  end
end
