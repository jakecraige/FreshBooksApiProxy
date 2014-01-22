module FreshBooksApi
  class TimeEntries < Client
    def create(attributes)
      attributes['date'] = Date.today unless attributes['date'].present?
      client.time_entry.create(time_entry: attributes.to_h)
    end
  end
end
