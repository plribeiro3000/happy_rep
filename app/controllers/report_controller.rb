class ReportController < AuthorizedController
  def events
    @events, @profit = report_events
  end
end