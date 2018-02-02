class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def after_sign_out_path_for(resource)
    new_user_session_path
  end

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username])
      devise_parameter_sanitizer.permit(:sign_up, keys: [:user_type])
      devise_parameter_sanitizer.permit(:account_update, keys: [:user_type])
    end

    # URL直打ちによる不正なアクセスに対応
    def auth_user
      if @current_user.user_type != "admin"
        flash[:notice] = "権限がありません"
        redirect_to maps_path
      end
    end

end
