class VehicleServicePolicy < ApplicationPolicy

  def index?
    user.admin? || user.police? || user.insurance? || user.api? || user.service?
  end

  def create?
    user.admin? || user.service?
  end

  def show?
    user.admin? || user.api? || user.service?
  end

  def update?
    user.admin? || user.service?
  end

  def destroy?
    user.admin? || user.service?
  end
end
