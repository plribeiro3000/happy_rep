class AnimalsController < AuthorizedController
  def index
    @animals = AnimalsService.advanced_search(params[:name], params[:race])
  end
end