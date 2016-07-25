# This file was automatically generated for BeMyGuest by APIMATIC v2.0 ( https://apimatic.io ).

require_relative 'base_response'

module BeMyGuestSuppliersApiv1
  class RetrieveConfigResponse < BaseResponse 

    # TODO: Write general description for this method
    # @return [List of Object]
    attr_accessor :data

    def initialize(data = nil,
                   data = nil)
      @data = data

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
        data = hash["data"]
        # Create object from extracted values
        RetrieveConfigResponse.new(data,
                                   data)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['data'] = data
      hash = super().merge(hash) 
      hash
    end
  end
end
