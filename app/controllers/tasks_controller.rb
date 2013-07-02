class TasksController < AuthorizedController
  def index
    @tasks = TasksService.advanced_search(params[:name], params[:date])
  end
end
