class BillAccessor < ApplicationAccessor
  def not_personal?
    @bill.profile.nil?
  end

  def profile
    return nil if not_personal?
    @profile ||= ProfileAccessor.new(@bill.profile)
  end
end