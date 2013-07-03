class TasksController < AuthorizedController
  def index
    @tasks = advanced_search(params[:name], params[:date])
  end
end