# This file was automatically generated for BeMyGuest by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'base_response'

module BeMyGuestSuppliersApiv1
  class GetTicketStatusResponse < BaseResponse 

    # TODO: Write general description for this method
    # @return [List of Ticket]
    attr_accessor :date

    def initialize(data = nil,
                   date = nil)
      @date = date

      # Call the constructor for the base class
      super(data)

    end

    # Creates JSON of the curent object
    def to_json(options = {})
      hash = key_map
      hash.to_json(options)
    end

    # Creates an instance of the object from a hash
    def self.from_hash(hash)
      if hash == nil
        nil
      else
        # Extract variables from the hash
        data = hash["data"]
        # Parameter is an array, so we need to iterate through it
        date = nil
        if hash["date"] != nil
          date = Array.new
          hash["date"].each{|structure| date << (Ticket.from_hash(structure) if structure)}
        end
        # Create object from extracted values
        GetTicketStatusResponse.new(data,
                                    date)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['date'] = date ? date.map(&:key_map) : nil
      hash = super().merge(hash) 
      hash
    end
  end
end
