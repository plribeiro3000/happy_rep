class EventsController < AuthorizedController
  def index
    @events = EventsService.advanced_search(params[:name], params[:date])
  end
end