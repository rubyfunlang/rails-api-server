module Security
  extend ActiveSupport::Concern

    included do
      before_action :check_client_token
    end

    private

    def check_client_token
      unless params[:data][:permit_token] == 'th1$iSa$upEr$equr3T0k3n'
        render json: { data: "You're not permitted to this service!" }
      end
    end
end
