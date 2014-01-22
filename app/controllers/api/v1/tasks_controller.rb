module Api
  module V1
    class TasksController < ApiController
      def index
        res = FreshBooksApi::Tasks.new(@api_url, @auth_token).all
        render json: res
      end
    end
  end
end
