class Admin::UsersController < AuthorizedController
  def index
    @users = UserService.all
    respond_with(@users)
  end

  def show
    @user = UserService.find(params[:id])
    respond_with(@user)
  end
end