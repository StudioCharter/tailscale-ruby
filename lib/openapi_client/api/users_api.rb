=begin
#Tailscale API

#### Overview  **The API endpoints documented here are stable. However, the OpenAPI spec used to generate this documentation is unstable. It may change or break without notice.**  The Tailscale API is a (mostly) RESTful API. Typically, both POST bodies and responses are JSON-encoded.  ### Base URL  The base URL for the Tailscale API is https://api.tailscale.com/api/v2/.  Examples in this document may abbreviate this to `/api/v2/`.  ### Authentication  Requests to the Tailscale API are authenticated with an API access token (sometimes called an API key). Access tokens can be supplied as the username portion of HTTP Basic authentication (leave the password blank) or as an OAuth Bearer token:  ``` // passing token with basic auth curl -u \"tskey-api-xxxxx:\" https://api.tailscale.com/api/v2/...  // passing token as bearer token curl -H \"Authorization: Bearer tskey-api-xxxxx\" https://api.tailscale.com/api/v2/... ```  Access tokens for individual users can be created and managed from the [Keys](https://login.tailscale.com/admin/settings/keys) page of the admin console. These tokens will have the same permissions as the owning user, and can be set to expire in 1 to 90 days. Access tokens are identifiable by the prefix tskey-api-.  Alternatively, an OAuth client can be used to create short-lived access tokens with scoped permission. OAuth clients don't expire, and can therefore be used to provide ongoing access to the API, creating access tokens as needed. OAuth clients and the access tokens they create are not tied to an individual Tailscale user. OAuth client secrets are identifiable by the prefix tskey-client-. Learn more about [OAuth clients].  [ OAuth clients ]: https://tailscale.com/kb/1215/  ### Errors  The Tailscale API returns status codes consistent with standard HTTP conventions. In addition to the status code, errors may include additional information in the response body:  ``` {   \"message\": \"additional error information\" } ```  ### Pagination  The Tailscale API does not currently support pagination. All results are returned at once.

The version of the OpenAPI document: v2

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'cgi'

module OpenapiClient
  class UsersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Approve a user
    # Approve a pending user's access to the tailnet. This is a no-op if user approval has not been enabled for the tailnet, or if the user is already approved.  User approval can be managed using the [tailnet settings endpoints](#tag/tailnetsettings).  Learn more about [user approval](/kb/1239/user-approval) and [enabling user approval for your network](/kb/1239/user-approval#enable-user-approval-for-your-network).  OAuth Scope: `users`.  > ⓘ User-based access tokens cannot approve their own user. 
    # @param user_id [String] ID of the user. 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def approve_user(user_id, opts = {})
      approve_user_with_http_info(user_id, opts)
      nil
    end

    # Approve a user
    # Approve a pending user&#39;s access to the tailnet. This is a no-op if user approval has not been enabled for the tailnet, or if the user is already approved.  User approval can be managed using the [tailnet settings endpoints](#tag/tailnetsettings).  Learn more about [user approval](/kb/1239/user-approval) and [enabling user approval for your network](/kb/1239/user-approval#enable-user-approval-for-your-network).  OAuth Scope: &#x60;users&#x60;.  &gt; ⓘ User-based access tokens cannot approve their own user. 
    # @param user_id [String] ID of the user. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def approve_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.approve_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.approve_user"
      end
      # resource path
      local_var_path = '/users/{userId}/approve'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
        :operation => :"UsersApi.approve_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#approve_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a user
    # > ⓘ This endpoint is available for the [Personal and Enterprise plans](/pricing).  Delete a user from their tailnet. Learn more about [deleting users](/kb/1145/remove-team-members#deleting-users).  OAuth Scope: `users`.  > ⓘ User-based access tokens cannot delete their own user. 
    # @param user_id [String] ID of the user. 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_user(user_id, opts = {})
      delete_user_with_http_info(user_id, opts)
      nil
    end

    # Delete a user
    # &gt; ⓘ This endpoint is available for the [Personal and Enterprise plans](/pricing).  Delete a user from their tailnet. Learn more about [deleting users](/kb/1145/remove-team-members#deleting-users).  OAuth Scope: &#x60;users&#x60;.  &gt; ⓘ User-based access tokens cannot delete their own user. 
    # @param user_id [String] ID of the user. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.delete_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.delete_user"
      end
      # resource path
      local_var_path = '/users/{userId}/delete'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
        :operation => :"UsersApi.delete_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#delete_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a user
    # Retrieve details about the specified user.  OAuth Scope: `users:read`. 
    # @param user_id [String] ID of the user. 
    # @param [Hash] opts the optional parameters
    # @return [User]
    def get_user(user_id, opts = {})
      data, _status_code, _headers = get_user_with_http_info(user_id, opts)
      data
    end

    # Get a user
    # Retrieve details about the specified user.  OAuth Scope: &#x60;users:read&#x60;. 
    # @param user_id [String] ID of the user. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(User, Integer, Hash)>] User data, response status code and response headers
    def get_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.get_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.get_user"
      end
      # resource path
      local_var_path = '/users/{userId}'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
      return_type = opts[:debug_return_type] || 'User'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.get_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#get_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List users
    # List all users of a tailnet.  OAuth Scope: `users:read`. 
    # @param tailnet [String] The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Allows for filtering the output by user type.  (default to 'member')
    # @option opts [String] :role Allows for filtering the output by user role. Learn more about [user roles](kb/1138/user-roles).  (default to 'all')
    # @return [ListUsers200Response]
    def list_users(tailnet, opts = {})
      data, _status_code, _headers = list_users_with_http_info(tailnet, opts)
      data
    end

    # List users
    # List all users of a tailnet.  OAuth Scope: &#x60;users:read&#x60;. 
    # @param tailnet [String] The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type Allows for filtering the output by user type.  (default to 'member')
    # @option opts [String] :role Allows for filtering the output by user role. Learn more about [user roles](kb/1138/user-roles).  (default to 'all')
    # @return [Array<(ListUsers200Response, Integer, Hash)>] ListUsers200Response data, response status code and response headers
    def list_users_with_http_info(tailnet, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.list_users ...'
      end
      # verify the required parameter 'tailnet' is set
      if @api_client.config.client_side_validation && tailnet.nil?
        fail ArgumentError, "Missing the required parameter 'tailnet' when calling UsersApi.list_users"
      end
      allowable_values = ["member", "shared", "all"]
      if @api_client.config.client_side_validation && opts[:'type'] && !allowable_values.include?(opts[:'type'])
        fail ArgumentError, "invalid value for \"type\", must be one of #{allowable_values}"
      end
      allowable_values = ["owner", "member", "admin", "it-admin", "network-admin", "billing-admin", "auditor", "all"]
      if @api_client.config.client_side_validation && opts[:'role'] && !allowable_values.include?(opts[:'role'])
        fail ArgumentError, "invalid value for \"role\", must be one of #{allowable_values}"
      end
      # resource path
      local_var_path = '/tailnet/{tailnet}/users'.sub('{' + 'tailnet' + '}', CGI.escape(tailnet.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'role'] = opts[:'role'] if !opts[:'role'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json']) unless header_params['Accept']

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'ListUsers200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.list_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#list_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Restore a user
    # > ⓘ This endpoint is available for the [Personal and Enterprise plans](/pricing).  Restores a suspended user's access to their tailnet. Learn more about [restoring users](/kb/1145/remove-team-members#restoring-users).  OAuth Scope: `users`.  > ⓘ User-based access tokens cannot restore their own user. 
    # @param user_id [String] ID of the user. 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def restore_user(user_id, opts = {})
      restore_user_with_http_info(user_id, opts)
      nil
    end

    # Restore a user
    # &gt; ⓘ This endpoint is available for the [Personal and Enterprise plans](/pricing).  Restores a suspended user&#39;s access to their tailnet. Learn more about [restoring users](/kb/1145/remove-team-members#restoring-users).  OAuth Scope: &#x60;users&#x60;.  &gt; ⓘ User-based access tokens cannot restore their own user. 
    # @param user_id [String] ID of the user. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def restore_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.restore_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.restore_user"
      end
      # resource path
      local_var_path = '/users/{userId}/restore'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
        :operation => :"UsersApi.restore_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#restore_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Suspend a user
    # > ⓘ This endpoint is available for the [Personal and Enterprise plans](/pricing).  Suspends a user from their tailnet. Learn more about [suspending users](/kb/1145/remove-team-members#suspending-users).  OAuth Scope: `users`.  > ⓘ User-based access tokens cannot suspend their own user. 
    # @param user_id [String] ID of the user. 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def suspend_user(user_id, opts = {})
      suspend_user_with_http_info(user_id, opts)
      nil
    end

    # Suspend a user
    # &gt; ⓘ This endpoint is available for the [Personal and Enterprise plans](/pricing).  Suspends a user from their tailnet. Learn more about [suspending users](/kb/1145/remove-team-members#suspending-users).  OAuth Scope: &#x60;users&#x60;.  &gt; ⓘ User-based access tokens cannot suspend their own user. 
    # @param user_id [String] ID of the user. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def suspend_user_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.suspend_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.suspend_user"
      end
      # resource path
      local_var_path = '/users/{userId}/suspend'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

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
        :operation => :"UsersApi.suspend_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#suspend_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update user role
    # Update the role for the specified user.  Learn more about [user roles](kb/1138/user-roles).  OAuth Scope: `users`.  > ⓘ User-based access tokens cannot update their own user's role. 
    # @param user_id [String] ID of the user. 
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateUserRoleRequest] :update_user_role_request 
    # @return [nil]
    def update_user_role(user_id, opts = {})
      update_user_role_with_http_info(user_id, opts)
      nil
    end

    # Update user role
    # Update the role for the specified user.  Learn more about [user roles](kb/1138/user-roles).  OAuth Scope: &#x60;users&#x60;.  &gt; ⓘ User-based access tokens cannot update their own user&#39;s role. 
    # @param user_id [String] ID of the user. 
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateUserRoleRequest] :update_user_role_request 
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_user_role_with_http_info(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: UsersApi.update_user_role ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling UsersApi.update_user_role"
      end
      # resource path
      local_var_path = '/users/{userId}/role'.sub('{' + 'userId' + '}', CGI.escape(user_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'update_user_role_request'])

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['bearerAuth']

      new_options = opts.merge(
        :operation => :"UsersApi.update_user_role",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: UsersApi#update_user_role\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
