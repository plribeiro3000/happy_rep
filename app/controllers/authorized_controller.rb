class AuthorizedController < ApplicationController
  before_filter :authenticate_user!
  authorize_resource :class => false

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
end