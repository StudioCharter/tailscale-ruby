=begin
#Tailscale API

#### Overview  **The API endpoints documented here are stable. However, the OpenAPI spec used to generate this documentation is unstable. It may change or break without notice.**  The Tailscale API is a (mostly) RESTful API. Typically, both POST bodies and responses are JSON-encoded.  ### Base URL  The base URL for the Tailscale API is https://api.tailscale.com/api/v2/.  Examples in this document may abbreviate this to `/api/v2/`.  ### Authentication  Requests to the Tailscale API are authenticated with an API access token (sometimes called an API key). Access tokens can be supplied as the username portion of HTTP Basic authentication (leave the password blank) or as an OAuth Bearer token:  ``` // passing token with basic auth curl -u \"tskey-api-xxxxx:\" https://api.tailscale.com/api/v2/...  // passing token as bearer token curl -H \"Authorization: Bearer tskey-api-xxxxx\" https://api.tailscale.com/api/v2/... ```  Access tokens for individual users can be created and managed from the [Keys](https://login.tailscale.com/admin/settings/keys) page of the admin console. These tokens will have the same permissions as the owning user, and can be set to expire in 1 to 90 days. Access tokens are identifiable by the prefix tskey-api-.  Alternatively, an OAuth client can be used to create short-lived access tokens with scoped permission. OAuth clients don't expire, and can therefore be used to provide ongoing access to the API, creating access tokens as needed. OAuth clients and the access tokens they create are not tied to an individual Tailscale user. OAuth client secrets are identifiable by the prefix tskey-client-. Learn more about [OAuth clients].  [ OAuth clients ]: https://tailscale.com/kb/1215/  ### Errors  The Tailscale API returns status codes consistent with standard HTTP conventions. In addition to the status code, errors may include additional information in the response body:  ``` {   \"message\": \"additional error information\" } ```  ### Pagination  The Tailscale API does not currently support pagination. All results are returned at once.

The version of the OpenAPI document: v2

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

module OpenapiClient
  class ApiError < StandardError
    attr_reader :code, :response_headers, :response_body

    # Usage examples:
    #   ApiError.new
    #   ApiError.new("message")
    #   ApiError.new(:code => 500, :response_headers => {}, :response_body => "")
    #   ApiError.new(:code => 404, :message => "Not Found")
    def initialize(arg = nil)
      if arg.is_a? Hash
        if arg.key?(:message) || arg.key?('message')
          super(arg[:message] || arg['message'])
        else
          super arg
        end

        arg.each do |k, v|
          instance_variable_set "@#{k}", v
        end
      else
        super arg
        @message = arg
      end
    end

    # Override to_s to display a friendly error message
    def to_s
      message
    end

    def message
      if @message.nil?
        msg = "Error message: the server returns an error"
      else
        msg = @message
      end

      msg += "\nHTTP status code: #{code}" if code
      msg += "\nResponse headers: #{response_headers}" if response_headers
      msg += "\nResponse body: #{response_body}" if response_body

      msg
    end
  end
end
