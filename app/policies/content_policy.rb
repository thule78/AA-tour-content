class ContentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def show?
    true
  end

  def create?
    user.admin?
  end

  def edit?
    true
  end

  def update?
    true
  end
  def destroy?
    user.admin?
  end
end
