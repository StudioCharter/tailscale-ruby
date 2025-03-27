# OpenapiClient::KeysApi

All URIs are relative to *https://api.tailscale.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_auth_key**](KeysApi.md#create_auth_key) | **POST** /tailnet/{tailnet}/keys | Create auth key |
| [**delete_key**](KeysApi.md#delete_key) | **DELETE** /tailnet/{tailnet}/keys/{keyId} | Delete key |
| [**get_key**](KeysApi.md#get_key) | **GET** /tailnet/{tailnet}/keys/{keyId} | Get key |
| [**list_tailnet_keys**](KeysApi.md#list_tailnet_keys) | **GET** /tailnet/{tailnet}/keys | List tailnet keys |


## create_auth_key

> <Key> create_auth_key(tailnet, all, opts)

Create auth key

Creates a new [auth key](https://tailscale.com/kb/1085/) in the specified tailnet. The key will be associated with the user who owns the API access token used to make this call, or, if the call is made with an access token derived from an OAuth client, the key will be owned by the tailnet.  Returns a JSON object with the supplied capabilities in addition to the generated key. The key should be recorded and kept safe and secure because it wields the capabilities specified in the request. The identity of the key is embedded in the key itself and can be used to perform operations on the key (e.g., revoking it or retrieving information about it). The full key can no longer be retrieved after the initial response.  OAuth Scope: `auth_keys`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::KeysApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
all = true # Boolean | If set to true, this will return all auth keys, API acess tokens and OAuth clients for the tailnet.
opts = {
  create_auth_key_request: OpenapiClient::CreateAuthKeyRequest.new({capabilities: OpenapiClient::KeyCapabilities.new}) # CreateAuthKeyRequest | At a minimum, the request POST body must have a `capabilities` object with a `devices` object, though it can be an empty JSON object. With nothing else supplied, such a request generates a single-use key with no tags. 
}

begin
  # Create auth key
  result = api_instance.create_auth_key(tailnet, all, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling KeysApi->create_auth_key: #{e}"
end
```

#### Using the create_auth_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Key>, Integer, Hash)> create_auth_key_with_http_info(tailnet, all, opts)

```ruby
begin
  # Create auth key
  data, status_code, headers = api_instance.create_auth_key_with_http_info(tailnet, all, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Key>
rescue OpenapiClient::ApiError => e
  puts "Error when calling KeysApi->create_auth_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **all** | **Boolean** | If set to true, this will return all auth keys, API acess tokens and OAuth clients for the tailnet. |  |
| **create_auth_key_request** | [**CreateAuthKeyRequest**](CreateAuthKeyRequest.md) | At a minimum, the request POST body must have a &#x60;capabilities&#x60; object with a &#x60;devices&#x60; object, though it can be an empty JSON object. With nothing else supplied, such a request generates a single-use key with no tags.  | [optional] |

### Return type

[**Key**](Key.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_key

> delete_key(tailnet, key_id)

Delete key

Deletes a specific api access token or auth key.  OAuth Scope: `api_access_tokens` grants access to personal API access tokens.  OAuth Scope: `auth_keys` grants access to machine auth keys.  OAuth Scope: `oauth_keys` grants access to OAuth clients and OAuth tokens. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::KeysApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
key_id = 'k123456CNTRL' # String | The id of the key. The key ID can be found in the [admin console](https://login.tailscale.com/admin/settings/keys). 

begin
  # Delete key
  api_instance.delete_key(tailnet, key_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling KeysApi->delete_key: #{e}"
end
```

#### Using the delete_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_key_with_http_info(tailnet, key_id)

```ruby
begin
  # Delete key
  data, status_code, headers = api_instance.delete_key_with_http_info(tailnet, key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling KeysApi->delete_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **key_id** | **String** | The id of the key. The key ID can be found in the [admin console](https://login.tailscale.com/admin/settings/keys).  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_key

> <Key> get_key(tailnet, key_id)

Get key

Returns a JSON object with information about a specific api access token or auth key, such as its creation and expiration dates and its capabilities.  OAuth Scope: `api_access_tokens:read` grants access to personal API access tokens.  OAuth Scope: `auth_keys:read` grants access to machine auth keys.  OAuth Scope: `oauth_keys:read` grants access to OAuth clients and OAuth tokens. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::KeysApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
key_id = 'k123456CNTRL' # String | The id of the key. The key ID can be found in the [admin console](https://login.tailscale.com/admin/settings/keys). 

begin
  # Get key
  result = api_instance.get_key(tailnet, key_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling KeysApi->get_key: #{e}"
end
```

#### Using the get_key_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Key>, Integer, Hash)> get_key_with_http_info(tailnet, key_id)

```ruby
begin
  # Get key
  data, status_code, headers = api_instance.get_key_with_http_info(tailnet, key_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Key>
rescue OpenapiClient::ApiError => e
  puts "Error when calling KeysApi->get_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **key_id** | **String** | The id of the key. The key ID can be found in the [admin console](https://login.tailscale.com/admin/settings/keys).  |  |

### Return type

[**Key**](Key.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tailnet_keys

> <ListTailnetKeys200Response> list_tailnet_keys(tailnet, all)

List tailnet keys

Returns a list of active auth keys and API access tokens.  If the parameter {all} was not specified, the set of keys returned depends on the access token used to make the request: - If the API call is made with a user-owned API access token, this returns only the keys owned by that user. - If the API call is made with an access token derived from an OAuth client, this returns all OAuth clients for the tailnet.  OAuth Scope: `api_access_tokens:read` grants access to personal API access tokens.  OAuth Scope: `auth_keys:read` grants access to machine auth keys.  OAuth Scope: `oauth_keys:read` grants access to OAuth clients and OAuth tokens. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::KeysApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
all = true # Boolean | If set to true, this will return all auth keys, API acess tokens and OAuth clients for the tailnet.

begin
  # List tailnet keys
  result = api_instance.list_tailnet_keys(tailnet, all)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling KeysApi->list_tailnet_keys: #{e}"
end
```

#### Using the list_tailnet_keys_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTailnetKeys200Response>, Integer, Hash)> list_tailnet_keys_with_http_info(tailnet, all)

```ruby
begin
  # List tailnet keys
  data, status_code, headers = api_instance.list_tailnet_keys_with_http_info(tailnet, all)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTailnetKeys200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling KeysApi->list_tailnet_keys_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **all** | **Boolean** | If set to true, this will return all auth keys, API acess tokens and OAuth clients for the tailnet. |  |

### Return type

[**ListTailnetKeys200Response**](ListTailnetKeys200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

