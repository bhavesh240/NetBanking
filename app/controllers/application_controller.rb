class ApplicationController < ActionController::Base

  #before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname,:lastname,:fathername,:mothername,:occupation,:fatheroccupation,:motheroccupation,:phonenumber,:aadharnumber,:pannumber,:documentimage,:userimage,:bankname,permanentaddress_attributes: [:houseno,:streetno,:area,:city,:state,:country,:pincode],localaddress_attributes: [:houseno,:streetno,:area,:city,:state,:country,:pincode]])
  end

  end