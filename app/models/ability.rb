class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
        user ||= User.new # guest user (not logged in)
        if user.admin?
          can :manage, :all
          can :access, :rails_admin   # grant access to rails_admin
          can :dashboard              # grant access to the dashboard
        else
          can :read, :all
        end
    
  end
end
