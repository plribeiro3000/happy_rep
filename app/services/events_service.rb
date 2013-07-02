module EventsService
  include Zertico::Service

  def self.advanced_search(name, date)
    Event.by_name(name).by_event_date(date)
  end
end