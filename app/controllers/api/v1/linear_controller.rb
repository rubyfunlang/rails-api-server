module Api
  module V1
    class LinearController < ApplicationController
      include Security

      def linear
        render json: { data: EquationManager::Linear.calculate(params[:data]) }
      end
    end
  end
end
