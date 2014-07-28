class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :update_sanitized_params, if: :devise_controller?
  def update_sanitized_params
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:company, :ruc, :city_id, :email, :password, :password_confirmation)}
    #devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:perfil_id)}   
  end

  def after_sign_in_path_for(resource)
  	case resource
   		when User
   			then system_index_path
 	    when Admin
    	    #then sistema_index_path
      	else 
        	root_path
    	end
	end

  helper_method :current_user
  helper_method :current_admin

end
