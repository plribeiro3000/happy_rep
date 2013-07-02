module LoansService
  include Zertico::Service

  def self.advanced_search(dweller, date)
    Loan.by_dweller(dweller).by_realization_date(date)
  end
end