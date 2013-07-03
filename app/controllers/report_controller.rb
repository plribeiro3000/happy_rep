class ReportController < AuthorizedController
  def events
    @events, @profit = report_events
  end

  def expenses
    @bills, @total = report_expenses
  end

  def restitutions
    @restitutions, @total = report_restitutions
  end
end