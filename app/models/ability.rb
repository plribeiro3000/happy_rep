class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    user_accessor = UserAccessor.new(user)
    profile = user_accessor.profile

    if profile.admin?
      can :manage, :all
    elsif profile.resident?
      # Resident Permissions
    elsif profile.former?
      # Former Permissions
    elsif profile.aggregate?
      # Aggregate Permissions
    end
  end
end