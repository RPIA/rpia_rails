class RegistrationsController < Devise::RegistrationsController
  before_filter :update_sanitized_params, if: :devise_controller?

  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:email, :password, :password_confirmation, :first_name, :last_name, :rin, :cell_number, :home_number, :rpi_address, :home_address)}
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:email, :password, :password_confirmation, :current_password, :first_name, :last_name, :rin, :cell_number, :home_number, :rpi_address, :home_address, {roles: []})}
  end

end
