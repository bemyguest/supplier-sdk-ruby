# This file was automatically generated for BeMyGuest by APIMATIC v2.0 ( https://apimatic.io ).

module BeMyGuestSuppliersApiv1
  class AddTicketsBatchRequest

    # TODO: Write general description for this method
    # @return [List of TicketsBatch]
    attr_accessor :data

    def initialize(data = nil)
      @data = data

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
        # Parameter is an array, so we need to iterate through it
        data = nil
        if hash["data"] != nil
          data = Array.new
          hash["data"].each{|structure| data << (TicketsBatch.from_hash(structure) if structure)}
        end
        # Create object from extracted values
        AddTicketsBatchRequest.new(data)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['data'] = data ? data.map(&:key_map) : nil
      hash
    end
  end
end
