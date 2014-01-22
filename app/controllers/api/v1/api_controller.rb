module Api
  module V1
    class ApiController < ActionController::Base
      before_filter :build_params
      skip_before_action :verify_authenticity_token

      private

        def build_params
          # extension seems to pass them with extra quotes so I remove them here
          @api_url    = params[:api_url].gsub(/\"/, ''),
          @auth_token = params[:auth_token].gsub(/\"/, '')
        end

    end
  end
end
