class ApplicationController < ActionController::Base
  protect_from_forgery prepend: true
  include ApplicationHelper
  # protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    men_mypage_path(resource)
  end
end
