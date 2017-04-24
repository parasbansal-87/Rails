class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  resue_from CanCan::AccessDenied do |exception|
  	redirect_to movies_url, :alert => exception.message
  end
end