# This file was automatically generated for BeMyGuest by APIMATIC v2.0 ( https://apimatic.io ).

module BeMyGuestSuppliersApiv1
  class TicketsBatch

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :adults_allowed

    # TODO: Write general description for this method
    # @return [UUID | String]
    attr_accessor :barcode_type_uuid

    # TODO: Write general description for this method
    # @return [Boolean]
    attr_accessor :children_allowed

    # TODO: Write general description for this method
    # @return [UUID | String]
    attr_accessor :currency_uuid

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :price_per_ticket

    # TODO: Write general description for this method
    # @return [UUID | String]
    attr_accessor :product_types_uuid

    # TODO: Write general description for this method
    # @return [List of Ticket]
    attr_accessor :tickets

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tickets_batch_name

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tickets_batch_reference

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tickets_order_date

    # TODO: Write general description for this method
    # @return [Integer]
    attr_accessor :tickets_per_person

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :valid_from

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :valid_to

    # TODO: Write general description for this method
    # @return [String]
    attr_accessor :tickets_order_reference

    def initialize(adults_allowed = nil,
                   barcode_type_uuid = nil,
                   children_allowed = nil,
                   currency_uuid = nil,
                   price_per_ticket = nil,
                   product_types_uuid = nil,
                   tickets = nil,
                   tickets_batch_name = nil,
                   tickets_batch_reference = nil,
                   tickets_order_date = nil,
                   tickets_per_person = nil,
                   valid_from = nil,
                   valid_to = nil,
                   tickets_order_reference = nil)
      @adults_allowed = adults_allowed
      @barcode_type_uuid = barcode_type_uuid
      @children_allowed = children_allowed
      @currency_uuid = currency_uuid
      @price_per_ticket = price_per_ticket
      @product_types_uuid = product_types_uuid
      @tickets = tickets
      @tickets_batch_name = tickets_batch_name
      @tickets_batch_reference = tickets_batch_reference
      @tickets_order_date = tickets_order_date
      @tickets_per_person = tickets_per_person
      @valid_from = valid_from
      @valid_to = valid_to
      @tickets_order_reference = tickets_order_reference

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
        adults_allowed = hash["adultsAllowed"]
        barcode_type_uuid = hash["barcodeTypeUuid"]
        children_allowed = hash["childrenAllowed"]
        currency_uuid = hash["currencyUuid"]
        price_per_ticket = hash["pricePerTicket"]
        product_types_uuid = hash["productTypesUuid"]
        # Parameter is an array, so we need to iterate through it
        tickets = nil
        if hash["tickets"] != nil
          tickets = Array.new
          hash["tickets"].each{|structure| tickets << (Ticket.from_hash(structure) if structure)}
        end
        tickets_batch_name = hash["ticketsBatchName"]
        tickets_batch_reference = hash["ticketsBatchReference"]
        tickets_order_date = hash["ticketsOrderDate"]
        tickets_per_person = hash["ticketsPerPerson"]
        valid_from = hash["validFrom"]
        valid_to = hash["validTo"]
        tickets_order_reference = hash["ticketsOrderReference"]
        # Create object from extracted values
        TicketsBatch.new(adults_allowed,
                         barcode_type_uuid,
                         children_allowed,
                         currency_uuid,
                         price_per_ticket,
                         product_types_uuid,
                         tickets,
                         tickets_batch_name,
                         tickets_batch_reference,
                         tickets_order_date,
                         tickets_per_person,
                         valid_from,
                         valid_to,
                         tickets_order_reference)
      end
    end

    # Defines the key map for json serialization
    def key_map
      hash = {}
      hash['adultsAllowed'] = adults_allowed
      hash['barcodeTypeUuid'] = barcode_type_uuid
      hash['childrenAllowed'] = children_allowed
      hash['currencyUuid'] = currency_uuid
      hash['pricePerTicket'] = price_per_ticket
      hash['productTypesUuid'] = product_types_uuid
      hash['tickets'] = tickets ? tickets.map(&:key_map) : nil
      hash['ticketsBatchName'] = tickets_batch_name
      hash['ticketsBatchReference'] = tickets_batch_reference
      hash['ticketsOrderDate'] = tickets_order_date
      hash['ticketsPerPerson'] = tickets_per_person
      hash['validFrom'] = valid_from
      hash['validTo'] = valid_to
      hash['ticketsOrderReference'] = tickets_order_reference
      hash
    end
  end
end
