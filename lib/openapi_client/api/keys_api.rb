=begin
#Tailscale API

#### Overview  **The API endpoints documented here are stable. However, the OpenAPI spec used to generate this documentation is unstable. It may change or break without notice.**  The Tailscale API is a (mostly) RESTful API. Typically, both POST bodies and responses are JSON-encoded.  ### Base URL  The base URL for the Tailscale API is https://api.tailscale.com/api/v2/.  Examples in this document may abbreviate this to `/api/v2/`.  ### Authentication  Requests to the Tailscale API are authenticated with an API access token (sometimes called an API key). Access tokens can be supplied as the username portion of HTTP Basic authentication (leave the password blank) or as an OAuth Bearer token:  ``` // passing token with basic auth curl -u \"tskey-api-xxxxx:\" https://api.tailscale.com/api/v2/...  // passing token as bearer token curl -H \"Authorization: Bearer tskey-api-xxxxx\" https://api.tailscale.com/api/v2/... ```  Access tokens for individual users can be created and managed from the [Keys](https://login.tailscale.com/admin/settings/keys) page of the admin console. These tokens will have the same permissions as the owning user, and can be set to expire in 1 to 90 days. Access tokens are identifiable by the prefix tskey-api-.  Alternatively, an OAuth client can be used to create short-lived access tokens with scoped permission. OAuth clients don't expire, and can therefore be used to provide ongoing access to the API, creating access tokens as needed. OAuth clients and the access tokens they create are not tied to an individual Tailscale user. OAuth client secrets are identifiable by the prefix tskey-client-. Learn more about [OAuth clients].  [ OAuth clients ]: https://tailscale.com/kb/1215/  ### Errors  The Tailscale API returns status codes consistent with standard HTTP conventions. In addition to the status code, errors may include additional information in the response body:  ``` {   \"message\": \"additional error information\" } ```  ### Pagination  The Tailscale API does not currently support pagination. All results are returned at once.

The version of the OpenAPI document: v2

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module OpenapiClient
  class KeysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create auth key
    # Creates a new [auth key](https://tailscale.com/kb/1085/) in the specified tailnet. The key will be associated with the user who owns the API access token used to make this call, or, if the call is made with an access token derived from an OAuth client, the key will be owned by the tailnet.  Returns a JSON object with the supplied capabilities in addition to the generated key. The key should be recorded and kept safe and secure because it wields the capabilities specified in the request. The identity of the key is embedded in the key itself and can be used to perform operations on the key (e.g., revoking it or retrieving information about it). The full key can no longer be retrieved after the initial response.  OAuth Scope: `auth_keys`. 
    # @param tailnet [String] The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
    # @param all [Boolean] If set to true, this will return all auth keys, API acess tokens and OAuth clients for the tailnet.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateAuthKeyRequest] :create_auth_key_request At a minimum, the request POST body must have a &#x60;capabilities&#x60; object with a &#x60;devices&#x60; object, though it can be an empty JSON object. With nothing else supplied, such a request generates a single-use key with no tags. 
    # @return [Key]
    def create_auth_key(tailnet, all, opts = {})
      data, _status_code, _headers = create_auth_key_with_http_info(tailnet, all, opts)
      data
    end

    # Create auth key
    # Creates a new [auth key](https://tailscale.com/kb/1085/) in the specified tailnet. The key will be associated with the user who owns the API access token used to make this call, or, if the call is made with an access token derived from an OAuth client, the key will be owned by the tailnet.  Returns a JSON object with the supplied capabilities in addition to the generated key. The key should be recorded and kept safe and secure because it wields the capabilities specified in the request. The identity of the key is embedded in the key itself and can be used to perform operations on the key (e.g., revoking it or retrieving information about it). The full key can no longer be retrieved after the initial response.  OAuth Scope: &#x60;auth_keys&#x60;. 
    # @param tailnet [String] The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
    # @param all [Boolean] If set to true, this will return all auth keys, API acess tokens and OAuth clients for the tailnet.
    # @param [Hash] opts the optional parameters
    # @option opts [CreateAuthKeyRequest] :create_auth_key_request At a minimum, the request POST body must have a &#x60;capabilities&#x60; object with a &#x60;devices&#x60; object, though it can be an empty JSON object. With nothing else supplied, such a request generates a single-use key with no tags. 
    # @return [Array<(Key, Integer, Hash)>] Key data, response status code and response headers
    def create_auth_key_with_http_info(tailnet, all, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.create_auth_key ...'
      end
      # verify the required parameter 'tailnet' is set
      if @api_client.config.client_side_validation && tailnet.nil?
        fail ArgumentError, "Missing the required parameter 'tailnet' when calling KeysApi.create_auth_key"
      end
      # verify the required parameter 'all' is set
      if @api_client.config.client_side_validation && all.nil?
        fail ArgumentError, "Missing the required parameter 'all' when calling KeysApi.create_auth_key"
      end
      # resource path
      local_var_path = '/tailnet/{tailnet}/keys'.sub('{' + 'tailnet' + '}', CGI.escape(tailnet.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'all'] = all

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'create_auth_key_request'])

      # return_type
      return_type = opts[:debug_return_type] || 'Key'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"KeysApi.create_auth_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KeysApi#create_auth_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete key
    # Deletes a specific api access token or auth key.  OAuth Scope: `api_access_tokens` grants access to personal API access tokens.  OAuth Scope: `auth_keys` grants access to machine auth keys.  OAuth Scope: `oauth_keys` grants access to OAuth clients and OAuth tokens. 
    # @param tailnet [String] The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
    # @param key_id [String] The id of the key. The key ID can be found in the [admin console](https://login.tailscale.com/admin/settings/keys). 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_key(tailnet, key_id, opts = {})
      delete_key_with_http_info(tailnet, key_id, opts)
      nil
    end

    # Delete key
    # Deletes a specific api access token or auth key.  OAuth Scope: &#x60;api_access_tokens&#x60; grants access to personal API access tokens.  OAuth Scope: &#x60;auth_keys&#x60; grants access to machine auth keys.  OAuth Scope: &#x60;oauth_keys&#x60; grants access to OAuth clients and OAuth tokens. 
    # @param tailnet [String] The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
    # @param key_id [String] The id of the key. The key ID can be found in the [admin console](https://login.tailscale.com/admin/settings/keys). 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_key_with_http_info(tailnet, key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.delete_key ...'
      end
      # verify the required parameter 'tailnet' is set
      if @api_client.config.client_side_validation && tailnet.nil?
        fail ArgumentError, "Missing the required parameter 'tailnet' when calling KeysApi.delete_key"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling KeysApi.delete_key"
      end
      # resource path
      local_var_path = '/tailnet/{tailnet}/keys/{keyId}'.sub('{' + 'tailnet' + '}', CGI.escape(tailnet.to_s)).sub('{' + 'keyId' + '}', CGI.escape(key_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"KeysApi.delete_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KeysApi#delete_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get key
    # Returns a JSON object with information about a specific api access token or auth key, such as its creation and expiration dates and its capabilities.  OAuth Scope: `api_access_tokens:read` grants access to personal API access tokens.  OAuth Scope: `auth_keys:read` grants access to machine auth keys.  OAuth Scope: `oauth_keys:read` grants access to OAuth clients and OAuth tokens. 
    # @param tailnet [String] The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
    # @param key_id [String] The id of the key. The key ID can be found in the [admin console](https://login.tailscale.com/admin/settings/keys). 
    # @param [Hash] opts the optional parameters
    # @return [Key]
    def get_key(tailnet, key_id, opts = {})
      data, _status_code, _headers = get_key_with_http_info(tailnet, key_id, opts)
      data
    end

    # Get key
    # Returns a JSON object with information about a specific api access token or auth key, such as its creation and expiration dates and its capabilities.  OAuth Scope: &#x60;api_access_tokens:read&#x60; grants access to personal API access tokens.  OAuth Scope: &#x60;auth_keys:read&#x60; grants access to machine auth keys.  OAuth Scope: &#x60;oauth_keys:read&#x60; grants access to OAuth clients and OAuth tokens. 
    # @param tailnet [String] The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
    # @param key_id [String] The id of the key. The key ID can be found in the [admin console](https://login.tailscale.com/admin/settings/keys). 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Key, Integer, Hash)>] Key data, response status code and response headers
    def get_key_with_http_info(tailnet, key_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.get_key ...'
      end
      # verify the required parameter 'tailnet' is set
      if @api_client.config.client_side_validation && tailnet.nil?
        fail ArgumentError, "Missing the required parameter 'tailnet' when calling KeysApi.get_key"
      end
      # verify the required parameter 'key_id' is set
      if @api_client.config.client_side_validation && key_id.nil?
        fail ArgumentError, "Missing the required parameter 'key_id' when calling KeysApi.get_key"
      end
      # resource path
      local_var_path = '/tailnet/{tailnet}/keys/{keyId}'.sub('{' + 'tailnet' + '}', CGI.escape(tailnet.to_s)).sub('{' + 'keyId' + '}', CGI.escape(key_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Key'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"KeysApi.get_key",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KeysApi#get_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List tailnet keys
    # Returns a list of active auth keys and API access tokens.  If the parameter {all} was not specified, the set of keys returned depends on the access token used to make the request: - If the API call is made with a user-owned API access token, this returns only the keys owned by that user. - If the API call is made with an access token derived from an OAuth client, this returns all OAuth clients for the tailnet.  OAuth Scope: `api_access_tokens:read` grants access to personal API access tokens.  OAuth Scope: `auth_keys:read` grants access to machine auth keys.  OAuth Scope: `oauth_keys:read` grants access to OAuth clients and OAuth tokens. 
    # @param tailnet [String] The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
    # @param all [Boolean] If set to true, this will return all auth keys, API acess tokens and OAuth clients for the tailnet.
    # @param [Hash] opts the optional parameters
    # @return [ListTailnetKeys200Response]
    def list_tailnet_keys(tailnet, all, opts = {})
      data, _status_code, _headers = list_tailnet_keys_with_http_info(tailnet, all, opts)
      data
    end

    # List tailnet keys
    # Returns a list of active auth keys and API access tokens.  If the parameter {all} was not specified, the set of keys returned depends on the access token used to make the request: - If the API call is made with a user-owned API access token, this returns only the keys owned by that user. - If the API call is made with an access token derived from an OAuth client, this returns all OAuth clients for the tailnet.  OAuth Scope: &#x60;api_access_tokens:read&#x60; grants access to personal API access tokens.  OAuth Scope: &#x60;auth_keys:read&#x60; grants access to machine auth keys.  OAuth Scope: &#x60;oauth_keys:read&#x60; grants access to OAuth clients and OAuth tokens. 
    # @param tailnet [String] The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
    # @param all [Boolean] If set to true, this will return all auth keys, API acess tokens and OAuth clients for the tailnet.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ListTailnetKeys200Response, Integer, Hash)>] ListTailnetKeys200Response data, response status code and response headers
    def list_tailnet_keys_with_http_info(tailnet, all, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: KeysApi.list_tailnet_keys ...'
      end
      # verify the required parameter 'tailnet' is set
      if @api_client.config.client_side_validation && tailnet.nil?
        fail ArgumentError, "Missing the required parameter 'tailnet' when calling KeysApi.list_tailnet_keys"
      end
      # verify the required parameter 'all' is set
      if @api_client.config.client_side_validation && all.nil?
        fail ArgumentError, "Missing the required parameter 'all' when calling KeysApi.list_tailnet_keys"
      end
      # resource path
      local_var_path = '/tailnet/{tailnet}/keys'.sub('{' + 'tailnet' + '}', CGI.escape(tailnet.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'all'] = all

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListTailnetKeys200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"KeysApi.list_tailnet_keys",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: KeysApi#list_tailnet_keys\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
