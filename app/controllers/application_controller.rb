class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def after_sign_out_path_for(resource)
    new_user_session_path
  end

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
      devise_parameter_sanitizer.permit(:account_update, keys: [:username])
    end
  end

  def set_current_user
    asoberu.current_user = current_user
  end

end
