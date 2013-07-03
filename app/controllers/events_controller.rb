class EventsController < AuthorizedController
  def index
    @events = advanced_search(params[:name], params[:date])
  end
end