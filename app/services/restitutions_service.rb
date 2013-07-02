module RestitutionsService
  include Zertico::Service

  def self.advanced_search(item, date)
    Restitution.by_item(item).by_date(date)
  end
end