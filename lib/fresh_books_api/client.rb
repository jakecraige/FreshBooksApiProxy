module FreshBooksApi
  class Client
    attr_reader :api_url, :auth_token

    def initialize(api_url, auth_token)
      @api_url = api_url
      @auth_token = auth_token
      client
    end

    def list_get_all(method, plural_key, singular_key)
      plural_key   = plural_key.to_s
      singular_key = singular_key.to_s
      results      = []

      list            = client.send(method).list
      number_of_pages = list[plural_key]['pages'].to_i

      number_of_pages.times do |page_number|
        results << client.send(method).list(page: page_number)[plural_key][singular_key]
      end

      results.flatten
    end

    private

      def client
        @client ||= FreshBooks::Client.new @api_url, @auth_token
      end

  end
end
