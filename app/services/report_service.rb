module ReportService
  def report_events
    profit = 0
    events = Event.where("event_date >= ? ", Date.today - 7.days)
    events.each do |event|
      profit += event.profit
    end
    [events, profit]
  end
end