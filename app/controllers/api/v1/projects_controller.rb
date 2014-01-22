module Api
  module V1
    class ProjectsController < ApiController
      def index
        res = FreshBooksApi::Projects.new(@api_url, @auth_token).all
        render json: res
      end
    end
  end
end
