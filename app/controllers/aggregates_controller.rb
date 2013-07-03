class AggregatesController < AuthorizedController
  def index
    @aggregates = advanced_search(params[:name])
  end
end