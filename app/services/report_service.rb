module ReportService
  def report_events
    profit = 0
    events = Event.this_month
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

  def report_restitutions
    total = 0
    restitutions = Restitution.this_month
    restitutions.each do |restitution|
      total += restitution.bill.value
    end
    [restitutions, total]
  end
end