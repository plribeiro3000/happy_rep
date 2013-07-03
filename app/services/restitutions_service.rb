module RestitutionsService
  include Zertico::Service

  def advanced_search(item, date)
    Restitution.by_item(item).by_date(date)
  end

  def build
    restitution = Restitution.new
    restitution.build_bill
    { :restitution => restitution }
  end

  def generate(attributes = {})
    restitution = Restitution.new(attributes)
    restitution.bill.expiration_date = Date.today
    restitution.bill.kind = 'nao-recorrente'
    restitution.save
    { :restitution => restitution, :path => '/restitution' }
  end

  def modify(id, attributes = {})
    restitution = self.find(id)[:restitution]
    restitution.update_attributes(attributes)
    { :restitution => restitution, :path => '/restitution' }
  end

  def delete(id)
    restitution = self.find(id)[:restitution]
    restitution.destroy
    { :restitution => restitution, :path => '/restitution' }
  end
end