class ResidentsController < AuthorizedController
  def index
    @residents = advanced_search(params[:name])
  end
end