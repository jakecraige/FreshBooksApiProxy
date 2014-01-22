module Api
  module V1
    class StaffsController < ApiController
      def index
        res = FreshBooksApi::Staffs.new(@api_url, @auth_token).all
        render json: res
      end
    end
  end
end
