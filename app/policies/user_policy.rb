class UserPolicy < ApplicationPolicy

  def index?
    user.admin? || user.police?
  end

  def create?
    user.admin?
  end

  def show?
    user.admin?
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end
end
