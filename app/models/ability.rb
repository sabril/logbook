class Ability
  include CanCan::Ability

  def initialize(user)
    @user = user ||= AdminUser.new
    @user.roles.each { |role| send(role) }
  end
  
  def admin
    can :manage, :all
  end
end
