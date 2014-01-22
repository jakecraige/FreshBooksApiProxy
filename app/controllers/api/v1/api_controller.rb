module Api
  module V1
    class ApiController < ActionController::Base
      before_filter :build_params
      skip_before_action :verify_authenticity_token

      private

        def build_params
          @api_url    = params[:api_url].match(/[\w.]+/).to_s
          @auth_token = params[:auth_token].match(/[\w.]+/).to_s
        end

    end
  end
end
