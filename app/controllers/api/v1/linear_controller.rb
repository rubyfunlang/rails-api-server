module Api
  module V1
    class LinearController < ApplicationController
      def linear
        render json:
        {
          status: 'SUCCESS',
          message: 'calculated',
          data:
          {
            EquationManager::Linear.calculate(params[:data])
          }
        }
      end
    end
  end
end
