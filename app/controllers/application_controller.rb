class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  #登录成功后
  def after_sign_in_path_for(resource_or_scope)
    admin_root_path
  end

end
