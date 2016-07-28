module Hyperwallet
  class HyperwalletError < StandardError
    def initialize(message=nil, http_status=nil, http_body=nil)
      @message = message
      @http_status = http_status
      @http_body = http_body
    end

    def to_s
      status_string = @http_status.nil? ? "" : "(Status #{@http_status}) "
      "#{status_string}#{@message}"
    end
  end

  class InvalidRequestError < HyperwalletError; end
  class AuthenticationError < HyperwalletError; end
  class APIError < HyperwalletError; end

end

