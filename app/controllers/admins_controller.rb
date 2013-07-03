class AdminsController < AuthorizedController
  def index
    @admins = advanced_search(params[:name])
  end
end