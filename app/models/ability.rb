class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    user_accessor = UserAccessor.new(user)
    profile_accessor = user_accessor.profile

    if profile_accessor.admin?
      can :manage, :animal
      can :manage, :bill
      can :manage, :book
      can :manage, :employee
      can :manage, :event
      can :manage, :loan, :profile_id => profile_accessor.id
      can :manage, :personal_bill, :profile => profile_accessor.id
      can :manage, :profile, :id => profile_accessor.id
      can [ :create, :destroy ], :profile, :role => %w(resident former aggregate)
      can :manage, :restitution
      can :manage, :user, :id => user.id
      can :manage, :vacine
    elsif profile_accessor.resident?
      can :manage, :animal
      can :manage, :bill
      can :manage, :book
      can :manage, :employee
      can :manage, :event
      can :manage, :loan, :profile_id => profile_accessor.id
      can :manage, :personal_bill, :profile => profile_accessor.id
      can :manage, :profile, :id => profile_accessor.id
      can [ :create, :destroy ], :profile, :role => %w(former aggregate)
      can :manage, :restitution
      can :manage, :user, :id => user.id
      can :manage, :vacine
    elsif profile_accessor.former?
      can :manage, :loan, :profile_id => profile_accessor.id
      can :manage, :personal_bill, :profile => profile_accessor.id
      can :manage, :profile, :id => profile_accessor.id
      can :manage, :user, :id => user.id
    elsif profile_accessor.aggregate?
      can :read, :event
      can :manage, :profile, :id => profile_accessor.id
      can :manage, :user, :id => user.id
    end
  end
end