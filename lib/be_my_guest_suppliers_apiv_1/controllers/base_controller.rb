# This file was automatically generated for BeMyGuest by APIMATIC v2.0 ( https://apimatic.io ).

module BeMyGuestSuppliersApiv1
  class BaseController
    attr_accessor :http_client, :http_call_back

    @@http_client = UnirestClient.new

    def initialize(http_client: nil, http_call_back: nil)
      @http_client = http_client ||= @@http_client
      @http_call_back = http_call_back
    end

    def validate_response(response)			
      if response.status_code == 400
        raise APIException.new "Wrong Arguments", response.status_code, response.raw_body
      elsif response.status_code == 401
        raise APIException.new "Unauthorized", response.status_code, response.raw_body
      elsif response.status_code == 403
        raise APIException.new "Forbidden", response.status_code, response.raw_body
      elsif response.status_code == 404
        raise APIException.new "Resource Not Found", response.status_code, response.raw_body
      elsif response.status_code == 405
        raise APIException.new "Method Not Allowed", response.status_code, response.raw_body
      elsif response.status_code == 410
        raise APIException.new "Resource No Longer Available", response.status_code, response.raw_body
      elsif !response.status_code.between?(200, 208) #[200,208] = HTTP OK
        raise APIException.new 'HTTP Response Not OK', response.status_code, response.raw_body
      end
    end
  end
end