module Api
  module V1
    class TimeEntriesController < ApiController
      def create
        res = client.create(time_entry_params)
        render json: res
      end

      private

      def client
        @client ||= FreshBooksApi::TimeEntries.new(@api_url, @auth_token)
      end

      def time_entry_params
        params.require(:time_entry).permit(
          :project_id, :task_id, :staff_id, :hours, :notes, :date
        )
      end
    end
  end
end
