module TasksService
  include Zertico::Service

  def self.advanced_search(name, date)
    Task.by_name(name).by_start_date(date)
  end
end