class LoansController < AuthorizedController
  def index
    @loans = LoansService.advanced_search(params[:dweller], params[:date])
  end
end