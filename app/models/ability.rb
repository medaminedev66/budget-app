class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    user ||= User.new # guest user (not logged in)
    if user.role == 'admin'
      can :manage, :all
    else
      can :read, Group do |group|
        group.user == user
      end

      can :read, Activity do |activity|
        activity.author_id == user.id
      end
    end
  end
end
