class Admin::SectoinsController < ApplicationController
  before_action :authenticate_user!
  # before_action :only_admin_user
  def index
  end

  def show
    @section = Section.find(params[:id])
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
  def section_params
      params.require(:section).permit(:user_id,:question_id,:question_sentence,:answer,:mistake,:otherwise)
  end
end
