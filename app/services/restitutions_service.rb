module RestitutionsService
  include Zertico::Service

  def advanced_search(item, date)
    Restitution.by_item(item).by_date(date)
  end
end