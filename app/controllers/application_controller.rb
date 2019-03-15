class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resource)
	    if resource.id == 1
	        admin_users_path
	    else
	        flash[:success] = "ようこそ!!"
	        user_path(current_user) # ログイン後に遷移するpathを設定
	    end
	end


  def after_sign_up_path_for(resource)
    user_path(current_user) # ログイン後に遷移するpathを設定
  end

	def after_sign_out_path_for(resource)
	   root_path # ログアウト後に遷移するpathを設定
    end


    protected
	def configure_permitted_parameters
		devise_parameter_sanitizer.permit(:sign_up, keys: [:name,:nickname,:email,:profile,:profile_image])
		devise_parameter_sanitizer.permit(:sign_in, keys: [:email,:password])
		devise_parameter_sanitizer.permit(:account_update, keys: [:name,:profile])
	end

end