class ScoresController < ApplicationController
  def show
  end

  def new
  	@score = Score.new
  	# @user = current_user
    #ランダムにレコードを取得する記述
    @sections = Section.order("RANDOM()").limit(3)
    # @choices = Choice.where(section_id: @section.id)
    # section.save
  end

  def create
     if current_user.scores.present? && section.answer == current_user.score
        @score = Score.find_by(user_id: current_user.id,section_id: params[:user][:section_id])
        @score.point += 1
        @score.point.save
       redirect_to scores_top_path
     else
       redirect_to scores_top_path
     end
  end
  def index
      @user = current_user
  end
  private
  def score_params
      params.require(:score).permit(:user_id,:section_id,:point)
  end
end
