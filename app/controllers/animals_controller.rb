class AnimalsController < AuthorizedController
  def index
    @animals = advanced_search(params[:name], params[:race])
  end
end