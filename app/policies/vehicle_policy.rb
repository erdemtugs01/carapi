class VehiclePolicy < ApplicationPolicy

  def index?
    user.admin? || user.police? || user.insurance? || user.api?
  end

  def create?
    user.admin?
  end

  def show?
    user.admin? || user.api? || user.insurance?
  end

  def update?
    user.admin? || user.insurance?
  end

  def destroy?
    user.admin? || user.police?
  end
end
