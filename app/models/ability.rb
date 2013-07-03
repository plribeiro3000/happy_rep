class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    user_accessor = UserAccessor.new(user)
    profile_accessor = user_accessor.profile

    if profile_accessor.admin?
      can :manage, Animal
      can :manage, Bill, :profile_id => nil
      can :manage, Bill, :profile_id => profile_accessor.id
      can :manage, Book
      can :manage, Employee
      can :manage, Event
      can :manage, Loan, :profile_id => profile_accessor.id
      can :manage, Profile
      can :manage, Restitution
      can :manage, Task, :profile_id => profile_accessor.id
      can :manage, User
      can :manage, Vacine
    elsif profile_accessor.resident?
      can :manage, Animal
      can [ :read, :create ], Bill, :profile_id => nil
      can :manage, Bill, :profile_id => profile_accessor.id
      can :manage, Book
      can [ :read ], Employee
      can [ :read, :create ], Event
      can :manage, Loan, :profile_id => profile_accessor.id
      can :read, Profile
      can :manage, Profile, :id => profile_accessor.id
      can [ :read, :create ], Restitution
      can :manage, Task, :profile_id => profile_accessor.id
      can :read, User
      can :manage, User, :id => user.id
      can [ :read, :create ], Vacine
    elsif profile_accessor.former?
      can :read, :all
      can :manage, Loan, :profile_id => profile_accessor.id
      can :manage, Profile, :id => profile_accessor.id
      can :manage, User, :id => user.id
    elsif profile_accessor.aggregate?
      can :read, :event
      can :read, User
      can :read, Profile
      can :manage, Profile, :id => profile_accessor.id
      can :manage, User, :id => user.id
    end
  end
end