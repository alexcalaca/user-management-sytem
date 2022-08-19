class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all?
    end
  end

  def create?
    @user.has_role? :hr
  end

  def index?    
  end

  def destroy?
    @user.has_role? :admin
  end

  def delete?
    @user.has_role? :admin
  end

  # Deactivate user
  def edit? 
    @user.has_any_role? :admin, :hr
  end

  # Deactivate user
  def update?
    @user.has_role? :admin
  end    
end
