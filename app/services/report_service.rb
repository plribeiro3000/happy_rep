module ReportService
  def report_events
    profit = 0
    events = Event.where("event_date >= ? ", Date.today - 7.days)
    events.each do |event|
      profit += event.profit
    end
    [events, profit]
  end

  def report_expenses
    total = 0
    bills = Bill.where(:profile_id => nil).this_month
    bills.each do |bill|
      total += bill.value
    end
    [bills, total]
  end
end