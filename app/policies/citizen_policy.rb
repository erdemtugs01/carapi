class CitizenPolicy < ApplicationPolicy
  def index?
    user.admin? || user.api?
  end

  def show?
    user.admin? || user.api?
  end

  def update?
    user.admin?
  end

  def destroy?
    user.admin?
  end
end
