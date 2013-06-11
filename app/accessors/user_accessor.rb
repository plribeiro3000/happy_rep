class UserAccessor < ApplicationAccessor
  def profile
    @profile ||= ProfileAccessor.new(@user.profile)
  end
end