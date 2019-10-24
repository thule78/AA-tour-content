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
    true
  end

  def edit?
    user.admin? || user.editor? || user.proofread?
  end

  def update?
    true
  end
  def destroy?
    user.admin?
  end
end
