module Api
  module V1
    class QuadraticController < ApplicationController
      include Security

      def quadratic
        render json: { data: EquationManager::Quadratic.calculate(params[:data]) }
      end
    end
  end
end
