class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user ||= AdminUser.new
    @user.roles.each { |role| send(role) }
  end
  
  def admin
    manager
    can :manage, [AdminUser, Standard]
  end
  
  def manager
    can :manage, [Project]
    can :update_password, AdminUser
  end
end
