class LoansController < AuthorizedController
  def index
    @loans = advanced_search(params[:dweller], params[:date])
  end
end