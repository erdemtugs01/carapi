class ActiveAdmin::CommentPolicy < ApplicationPolicy
  
  def create?
    true
  end

  def index?
    true
  end

  def show?
    true
  end

  def update?
    true
  end

  def destroy?
    true
  end

end
