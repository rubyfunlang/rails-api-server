module Api
  module V1
    class QuadraticController < ApplicationController
      def quadratic
        render json:
        {
          status: 'SUCCESS',
          message: 'calculated',
          data:
          {
            EquationManager::Quadratic.calculate(params[:data])
          }
        }
      end
    end
  end
end
