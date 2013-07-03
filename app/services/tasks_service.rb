module TasksService
  include Zertico::Service

  def advanced_search(name, date)
    Task.by_name(name).by_start_date(date)
  end
end