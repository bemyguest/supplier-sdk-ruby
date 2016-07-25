# This file was automatically generated for BeMyGuest by APIMATIC v2.0 ( https://apimatic.io ).

require 'date'
module BeMyGuestSuppliersApiv1
  class Ticket

    # Status of the ticket - unused | used | invalid
    # @return [String]
    attr_accessor :status

    # Value of the ticket number
    # @return [String]
    attr_accessor :value

    # TODO: Write general description for this method
    # @return [DateTime]
    attr_accessor :updated_at

    def initialize(status = nil,
                   value = nil,
                   updated_at = nil)
      @status = status
      @value = value
      @updated_at = updated_at

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
        status = hash["status"]
        value = hash["value"]
        updated_at = DateTime.iso8601(hash["updatedAt"]) if hash["updatedAt"]
        # Create object from extracted values
        Ticket.new(status,
                   value,
                   updated_at)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['status'] = status
      hash['value'] = value
      hash['updatedAt'] = updated_at
      hash
    end
  end
end
