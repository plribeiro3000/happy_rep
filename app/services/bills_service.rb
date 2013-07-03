module BillsService
  include Zertico::Service

  def advanced_search(expiration_date, payment_date)
    Bill.by_expiration_date(expiration_date).by_payment_date(payment_date)
  end
end