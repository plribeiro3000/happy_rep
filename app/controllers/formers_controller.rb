class FormersController < AuthorizedController
  def index
    @formers = advanced_search(params[:name])
  end
end