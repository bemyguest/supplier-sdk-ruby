# This file was automatically generated for BeMyGuest by APIMATIC v2.0 ( https://apimatic.io ).

module BeMyGuestSuppliersApiv1
  class BeMyGuestSuppliersAPIV1Client
    # Singleton access to client controller
    # @return [APIController] Returns the controller instance
    def client
      APIController.instance
    end

    # Initializer with authentication and configuration parameters
    def initialize(x_authorization: nil)
      Configuration.x_authorization = x_authorization
    end
  end
end
