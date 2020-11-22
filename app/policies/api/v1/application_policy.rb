module Api
  module V1
    class ApplicationPolicy < ::ApplicationPolicy
      def index?
        true
      end

      def show?
        true
      end

      def create?
        true
      end

      def update?
        true
      end

      def destroy?
        true
      end
    end
  end
end
