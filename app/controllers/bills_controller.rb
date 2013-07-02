class BillsController < AuthorizedController
  def index
    @bills = BillsService.advanced_search(params[:expiration_date], params[:payment_date])
  end
end