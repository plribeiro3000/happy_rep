class ReportController < AuthorizedController
  def events
    @events, @profit = report_events
  end

  def expenses
    @bills, @total = report_expenses
  end
end