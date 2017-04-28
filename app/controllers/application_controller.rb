class ApplicationController < ActionController::Base


  # user permition added for firstname and lastname
  before_action :configure_permitted_parameters, if: :devise_controller?

  #protect_from_forgery with: :exception, prepend: true

    protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname], keys: [:lastname])
    end
end
