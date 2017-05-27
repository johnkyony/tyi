class Ability
  include CanCan::Ability

  def initialize(user)
    alias_action :create, :read, :update, :destroy, :to => :crud
    alias_action :create , :read , :update , :destroy , :to => :default_writer_premisions
    if user.superadmin_role?
      can :manage , :all 
      can :access , :rails_admin 
      can :dashboard
    end
    if user.supervisor_role?
      can :manage , User
    end
    if user.editors_role?
      can :crud , Post
      
    end
    if user.writers_role? 
      can :default_writer_premisions , Post
      
    end
  end
end
