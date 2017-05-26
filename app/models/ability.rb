class Ability
  include CanCan::Ability

  def initialize(user)
    
    if user.superadmin_role?
      can :manage , :all 
      can :access , :rails_admin 
      can :dashboard
    end
    if user.supervisor_role?
      can :manage , User
    end
  end
end
