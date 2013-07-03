class RootController < ApplicationController
  def index
    @users = birthdays
  end
end