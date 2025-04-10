=begin
#Tailscale API

#### Overview  **The API endpoints documented here are stable. However, the OpenAPI spec used to generate this documentation is unstable. It may change or break without notice.**  The Tailscale API is a (mostly) RESTful API. Typically, both POST bodies and responses are JSON-encoded.  ### Base URL  The base URL for the Tailscale API is https://api.tailscale.com/api/v2/.  Examples in this document may abbreviate this to `/api/v2/`.  ### Authentication  Requests to the Tailscale API are authenticated with an API access token (sometimes called an API key). Access tokens can be supplied as the username portion of HTTP Basic authentication (leave the password blank) or as an OAuth Bearer token:  ``` // passing token with basic auth curl -u \"tskey-api-xxxxx:\" https://api.tailscale.com/api/v2/...  // passing token as bearer token curl -H \"Authorization: Bearer tskey-api-xxxxx\" https://api.tailscale.com/api/v2/... ```  Access tokens for individual users can be created and managed from the [Keys](https://login.tailscale.com/admin/settings/keys) page of the admin console. These tokens will have the same permissions as the owning user, and can be set to expire in 1 to 90 days. Access tokens are identifiable by the prefix tskey-api-.  Alternatively, an OAuth client can be used to create short-lived access tokens with scoped permission. OAuth clients don't expire, and can therefore be used to provide ongoing access to the API, creating access tokens as needed. OAuth clients and the access tokens they create are not tied to an individual Tailscale user. OAuth client secrets are identifiable by the prefix tskey-client-. Learn more about [OAuth clients].  [ OAuth clients ]: https://tailscale.com/kb/1215/  ### Errors  The Tailscale API returns status codes consistent with standard HTTP conventions. In addition to the status code, errors may include additional information in the response body:  ``` {   \"message\": \"additional error information\" } ```  ### Pagination  The Tailscale API does not currently support pagination. All results are returned at once.

The version of the OpenAPI document: v2

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::KeysApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'KeysApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::KeysApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of KeysApi' do
    it 'should create an instance of KeysApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::KeysApi)
    end
  end

  # unit tests for create_auth_key
  # Create auth key
  # Creates a new [auth key](https://tailscale.com/kb/1085/) in the specified tailnet. The key will be associated with the user who owns the API access token used to make this call, or, if the call is made with an access token derived from an OAuth client, the key will be owned by the tailnet.  Returns a JSON object with the supplied capabilities in addition to the generated key. The key should be recorded and kept safe and secure because it wields the capabilities specified in the request. The identity of the key is embedded in the key itself and can be used to perform operations on the key (e.g., revoking it or retrieving information about it). The full key can no longer be retrieved after the initial response.  OAuth Scope: &#x60;auth_keys&#x60;. 
  # @param tailnet The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
  # @param all If set to true, this will return all auth keys, API acess tokens and OAuth clients for the tailnet.
  # @param [Hash] opts the optional parameters
  # @option opts [CreateAuthKeyRequest] :create_auth_key_request At a minimum, the request POST body must have a &#x60;capabilities&#x60; object with a &#x60;devices&#x60; object, though it can be an empty JSON object. With nothing else supplied, such a request generates a single-use key with no tags. 
  # @return [Key]
  describe 'create_auth_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_key
  # Delete key
  # Deletes a specific api access token or auth key.  OAuth Scope: &#x60;api_access_tokens&#x60; grants access to personal API access tokens.  OAuth Scope: &#x60;auth_keys&#x60; grants access to machine auth keys.  OAuth Scope: &#x60;oauth_keys&#x60; grants access to OAuth clients and OAuth tokens. 
  # @param tailnet The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
  # @param key_id The id of the key. The key ID can be found in the [admin console](https://login.tailscale.com/admin/settings/keys). 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_key
  # Get key
  # Returns a JSON object with information about a specific api access token or auth key, such as its creation and expiration dates and its capabilities.  OAuth Scope: &#x60;api_access_tokens:read&#x60; grants access to personal API access tokens.  OAuth Scope: &#x60;auth_keys:read&#x60; grants access to machine auth keys.  OAuth Scope: &#x60;oauth_keys:read&#x60; grants access to OAuth clients and OAuth tokens. 
  # @param tailnet The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
  # @param key_id The id of the key. The key ID can be found in the [admin console](https://login.tailscale.com/admin/settings/keys). 
  # @param [Hash] opts the optional parameters
  # @return [Key]
  describe 'get_key test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for list_tailnet_keys
  # List tailnet keys
  # Returns a list of active auth keys and API access tokens.  If the parameter {all} was not specified, the set of keys returned depends on the access token used to make the request: - If the API call is made with a user-owned API access token, this returns only the keys owned by that user. - If the API call is made with an access token derived from an OAuth client, this returns all OAuth clients for the tailnet.  OAuth Scope: &#x60;api_access_tokens:read&#x60; grants access to personal API access tokens.  OAuth Scope: &#x60;auth_keys:read&#x60; grants access to machine auth keys.  OAuth Scope: &#x60;oauth_keys:read&#x60; grants access to OAuth clients and OAuth tokens. 
  # @param tailnet The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
  # @param all If set to true, this will return all auth keys, API acess tokens and OAuth clients for the tailnet.
  # @param [Hash] opts the optional parameters
  # @return [ListTailnetKeys200Response]
  describe 'list_tailnet_keys test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
