class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :info_exist

  def info_exist
      return User_infos.exists?(user_id: current_user.id)
  end
end
