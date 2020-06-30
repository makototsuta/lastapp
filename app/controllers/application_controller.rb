class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :icon, :address, :sex, :mobile_number, :birthed_at, :introduction, :icon_cache])
  end
end
