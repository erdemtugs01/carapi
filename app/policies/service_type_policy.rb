class ServiceTypePolicy < ApplicationPolicy
  def index?
    user.api? || user.service?
  end
  def show?
    user.api? || user.service?
  end
  def create?
    user.service?
  end
  def update?
    user.service?
  end
  def destroy?
    user.service?
  end
end
