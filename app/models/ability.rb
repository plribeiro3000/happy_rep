class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    user_accessor = UserAccessor.new(user)
    profile_accessor = user_accessor.profile

    if profile_accessor.admin?
      can :manage, :admin
      can :manage, :aggregate
      can :manage, :animal
      can :manage, :bill
      can :manage, :book
      can :manage, :employee
      can :manage, :event
      can :manage, :former
      can :manage, :loan
      can :manage, :report
      can :manage, :resident
      can :manage, :restitution
      can :manage, :task
    elsif profile_accessor.resident?
      can [ :index, :show ], :admin
      can [ :index, :show, :new, :create ], :aggregate
      can :manage, :animal
      can :manage, :bill
      can :manage, :book
      can [ :index, :show ], :employee
      can [ :index, :show, :new, :create ], :event
      can [ :index, :show, :new, :create ], :former
      can :manage, :loan
      can :manage, :report
      can [ :index, :show, :new, :create ], :resident
      can [ :index, :show, :new, :create ], :restitution
      can :manage, :task
    elsif profile_accessor.former?
      can [ :index, :show ], :admin
      can [ :index, :show ], :aggregate
      can :manage, :loan
      can [ :index, :show ], :former
      can [ :index, :show ], :resident
    elsif profile_accessor.aggregate?
      can [ :index, :show ], :admin
      can [ :index, :show ], :aggregate
      can [ :index, :show ], :event
      can [ :index, :show ], :former
      can [ :index, :show ], :resident
    end
  end
end