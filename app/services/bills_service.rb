module BillsService
  include Zertico::Service

  def advanced_search(expiration_date, payment_date)
    Bill.where(:profile_id => [ nil, current_user.id ]).by_expiration_date(expiration_date).by_payment_date(payment_date)
  end

  def build
    { :bill => Bill.new }
  end

  def find(id)
    { :bill => Bill.where(:profile_id => [ nil, current_user.id ]).find(id) }
  end

  def generate(attributes = {})
    bill = Bill.create(attributes)
    { :bill => bill, :location => bills_path }
  end

  def modify(id, attributes = {})
    bill = self.find(id)[:bill]
    bill.update_attributes(attributes)
    { :bill => bill, :location => bills_path }
  end

  def delete(id)
    bill = self.find(id)[:bill]
    bill.destroy
    { :bill => bill, :location => bills_path }
  end
end