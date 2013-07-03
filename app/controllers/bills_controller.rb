class BillsController < AuthorizedController
  def index
    @bills = advanced_search(params[:expiration_date], params[:payment_date])
  end
end