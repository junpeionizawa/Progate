class UsersController < ApplicationController
  before_action :authenticate_user!
  PER = 4
  def index
    @user = current_user
  end

  def show
    @user = current_user
    @section = Section.last
    # page(params[:page]).per(4)
    @questions = current_user.questions
  end
  def edit
     @user = User.find(params[:id])
  end

  def update
     @user = current_user
     @user.update(user_params)
     redirect_to user_path(@user.id)
  end

  def destroy
    user = current_user
    user.destroy
    redirect_to root_path
  end
  def history
    @questions = Question.group("DATE(created_at)").count
     history_list = []
      for date, count in @questions do
         # history = []
         if count > 20
         color = "mediumblue"
         history_list.push({'count':count,'start':date,'rendering':'background','color':'mediumblue'})
         history_list.flatten!
         elsif count > 15
          color = "blue"
          # history_list = {'start':date,'rendering':'background','color':'red'}
          history_list.push({'count':count,'start':date,'rendering':'background','color':'blue'})
          history_list.flatten!
         elsif count > 10
          color = "dodgerblue"
          # history_list = {'start':date,'rendering':'background','color':'orangered'}
          history_list.push({'count':count,'start':date,'rendering':'background','color':'dodgerblue'})
          history_list.flatten!
        elsif count > 5
          color = "deepskyblue"
          # history_list = {'start':date,'rendering':'background','color':'orange'}
           history_list.push({'count':count,'start':date,'rendering':'background','color':'deepskyblue'})
           history_list.flatten!
        elsif count > 2
          color = "lightskyblue"
          history_list.push({'count':count,'start':date,'rendering':'background','color':'lightskyblue'})
          history_list.flatten!
        elsif count > 0
          color = "lightcyan"
          history_list.push({'count':count,'start':date,'rendering':'background','color':'lightcyan'})
          history_list.flatten!
        else
          color = "lightcyan"
          history_list.push({'count':count,'start':date,'rendering':'background','color':'lightcyan'})
          history_list.flatten!
      end
      #render :json => history_list
       # history_list.add = {'start':date,'rendering':'background','color':'yellow'}
     end
        # render :json =>[{'start':'2019-03-13','rendering':'background','color':'red'}].to_json
       render :json => history_list.to_json
  end
  private
  def user_params
    params.require(:user).permit(:name,:nickname,:profile,:profile_image,:password)
  end
end
