class AuthorizedController < ApplicationController
  before_filter :authenticate_user!
  authorize_resource(User)

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to new_user_session_url, :alert => exception.message
  end
end