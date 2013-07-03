module LoansService
  include Zertico::Service

  def advanced_search(dweller, date)
    Loan.where(:profile_id => current_user.profile.id).by_dweller(dweller).by_realization_date(date)
  end

  def find(id)
    { :loan => Loan.where(:profile_id => current_user.profile.id).find(id) }
  end

  def generate(attributes = {})
    loan = Loan.new(attributes)
    loan.profile = current_user.profile
    loan.save
    { :loan => loan }
  end

  def modify(id, attributes = {})
    loan = self.find(id)[:loan]
    loan.update_attributes(attributes)
    { :loan => loan }
  end

  def delete(id)
    loan = self.find(id)[:loan]
    loan.destroy
    { :loan => loan }
  end
end