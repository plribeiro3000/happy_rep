class ProfileAccessor < ApplicationAccessor
  def user
    @user ||= UserAccessor.new(@profile.user)
  end

  def admin?
    @profile.role.eql?('admin')
  end

  def resident?
    @profile.role.eql?('resident')
  end

  def former?
    @profile.role.eql?('former')
  end

  def aggregate?
    @profile.role.eql?('aggregate')
  end
end