# This file was automatically generated for BeMyGuest by APIMATIC v2.0 ( https://apimatic.io ).

module BeMyGuestSuppliersApiv1
  class APIController < BaseController
    @@instance = APIController.new
    # Singleton instance of the controller class
    def self.instance
      @@instance
    end

    # A Config object has the following attributes:
    # + `timezone` - Our sever timezone
    # + `now` - Our server timestamp
    # + `version` - Current version is "1.0"
    # + `serverUrl` - Main API URL
    # + user - All important userdata for provided API key
    #     + `name` - Name / Company / Organization
    #     + `email` - E-Mail Address
    #     + `uuid` - Unique ID
    #     + `defaultPagination` - Default Pagination value (per page), between 1-100
    #     + `defaultCurrencyUuid` - Default currency UUID for /products (if not specified)
    #     + `defaultCurrencyCode` - Default currency code for /products (if not specified)
    #     + `defaultLanguageUuid` - Default language UUID  /products (if not specified)
    #     + `defaultLanguageCode` - Default language code  /products (if not specified)
    # + `products` - A list of supplier products
    #     + `productTypes` - A list of prodcut types bellonging to this product
    # + `languages` - A list of supported languages.
    # + `currencies` - An array of supported currencies.
    # + `barcodeTypes` - An array of supported barcode types.
    # @return RetrieveConfigResponse response from the API call
    def retrieve_config
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/suppliers/config'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'BeMyGuest.Suppliers.SDK.v1',
        'accept' => 'application/json',
        'X-Authorization' => Configuration.x_authorization
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return RetrieveConfigResponse.from_hash(decoded)
    end

    # ## Add Tickets BatchPlease remember that with all update tickets status requests you need to providea proper Content-Type header.`Content-Type: application/json`Example JSON request:        {          "ticketsBatchName" : "1 DAY ADULT TAB 6M (PEAK)",          "ticketsBatchReference" : "USS1DADTAB6MA0210004",          "ticketsOrderReference" : "1609871",          "ticketsOrderDate" : "2016-01-12",          "ticketsPerPerson" : 1,          "productTypesUuid": [            "3016c3cf-d483-5e81-ad55-ba362670e2e2"          ],          "currencyUuid": "0a1f8d35-3b6f-54ac-8421-131f340b6334",          "barcodeTypeUuid": "a87e1e6f-c4f0-5655-b0b6-05e066bdb51b",          "adultsAllowed" : true,          "childrenAllowed" : true,          "seniorsAllowed" : true,          "validFrom" : "2016-01-15",          "validTo" : "2016-06-15",          "pricePerTicket" : 67.00,          "tickets": [            {              "value" : "100040100100005022",              "status" : "unused"            },            {              "value" : "100040100100005023",              "status" : "unused"            },            {              "value" : "100040100100005024",              "status" : "unused"            }          ]        }A response object has the following attributes:+ `ticketsBatchName` - name of the inserted ticket batch+ `ticketsBatchReference` - reference of the inserted ticket batch+ `ticketsOrderReference` - tickets order reference+ `ticketsOrderDate` - date - tickets order date+ `ticketsPerPerson` - integer+ `productTypesUuid` - array - all attached product types to this batch+ `currencyUuid` - string+ `barcodeTypeUuid` - string+ `adultsAllowed` - bool - batch validity for adults bookings - true|false+ `childrenAllowed` - bool - batch validity for children bookings - true|false+ `validFrom` - string - valid from date for the batch+ `validTo` - string - valid to date for the batch+ `pricePerTicket` - number - price per ticket+ `tickets` - array - list of all tickets that have been added to the batch with their number and statusesExample JSON response:        {          "data": {            "ticketsBatchName": "1 DAY ADULT TAB 6M (PEAK)",            "ticketsBatchReference": "USS1DADTAB6MA0210004",            "ticketsOrderReference": "1609871",            "ticketsOrderDate": "2016-01-12",            "ticketsPerPerson": 1,            "productTypesUuid": [              "3016c3cf-d483-5e81-ad55-ba362670e2e2"            ],            "currencyUuid": "0a1f8d35-3b6f-54ac-8421-131f340b6334",            "barcodeTypeUuid": "a87e1e6f-c4f0-5655-b0b6-05e066bdb51b",            "adultsAllowed": true,            "childrenAllowed": true,            "validFrom": "2016-01-15",            "validTo": "2016-06-15",            "pricePerTicket": 67,            "tickets": {              "data": [                {                  "value": "100040100100005022",                  "status": "unused",                  "usedAt": null                },                {                  "value": "100040100100005023",                  "status": "unused",                  "usedAt": null                },                {                  "value": "100040100100005024",                  "status": "unused",                  "usedAt": null                }              ]            }          }        }## Update Tickets StatusPlease remember that with all update tickets status requests you need to providea proper Content-Type header.`Content-Type: application/json`Example JSON request:        {          "data": [            {              "value" : "100040100100005022",              "status" : "used"            },           {              "value" : "0041018110401587837",                "status" : "unused"            }          ]        }A response object has the following attributes:+ `value` - value of ticket number+ `status` - unused / used / invalid - status of the ticket after the update+ `usedAt` - null / dateExample JSON response:        {          "data": [            {              "value": "100040100100005022",              "status": "used",              "usedAt": "2016-07-25 11:47:23"            },            {              "value": "0041018110401587837",              "status": "unused",              "usedAt": null            }          ]        }
    # @param [AddTicketsBatchRequest] data Required parameter: Example: 
    # @return AddTicketsBatchResponse response from the API call
    def add_tickets_batch(data)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/suppliers/tickets'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'BeMyGuest.Suppliers.SDK.v1',
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'X-Authorization' => Configuration.x_authorization
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.post _query_url, headers: _headers, parameters: data.to_json
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return AddTicketsBatchResponse.from_hash(decoded)
    end

    # Update statuses for all the provided tickets
    # @param [UpdateTicketsStatusRequest] data Required parameter: Example: 
    # @return UpdateTicketsStatusResponse response from the API call
    def update_tickets_status(data)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/suppliers/tickets'

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'BeMyGuest.Suppliers.SDK.v1',
        'accept' => 'application/json',
        'content-type' => 'application/json; charset=utf-8',
        'X-Authorization' => Configuration.x_authorization
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.put _query_url, headers: _headers, parameters: data.to_json
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return UpdateTicketsStatusResponse.from_hash(decoded)
    end

    # Get status for specific ticket number.##ResponseA response object has the following attributes:+ `value` - value of ticket number+ `status` - unused / used / invalid - current status of the ticket+ `usedAt` - null / date
    # @param [String] ticket_number Required parameter: Example: 
    # @return GetTicketStatusResponse response from the API call
    def get_ticket_status(ticket_number)
      # the base uri for api requests
      _query_builder = Configuration.base_uri.dup

      # prepare query string for API call
      _query_builder << '/v1/suppliers/tickets/{ticket_number}'

      # process optional query parameters
      _query_builder = APIHelper.append_url_with_template_parameters _query_builder, {
        'ticket_number' => ticket_number
      }

      # validate and preprocess url
      _query_url = APIHelper.clean_url _query_builder

      # prepare headers
      _headers = {
        'user-agent' => 'BeMyGuest.Suppliers.SDK.v1',
        'accept' => 'application/json',
        'X-Authorization' => Configuration.x_authorization
      }

      # Create the HttpRequest object for the call
      _http_request = @http_client.get _query_url, headers: _headers
      
      # Call the on_before_request callback
      @http_call_back.on_before_request(_http_request) if @http_call_back

      # Invoke the API call and get the response
      _response = @http_client.execute_as_string(_http_request)

      # Call the on_after_response callback
      @http_call_back.on_after_response(_response) if @http_call_back

      # Global error handling using HTTP status codes.
      validate_response(_response)

      # Return appropriate response type
      decoded = APIHelper.json_deserialize(_response.raw_body)
      return GetTicketStatusResponse.from_hash(decoded)
    end
  end
end
