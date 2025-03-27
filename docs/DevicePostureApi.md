# OpenapiClient::DevicePostureApi

All URIs are relative to *https://api.tailscale.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_posture_integration**](DevicePostureApi.md#create_posture_integration) | **POST** /tailnet/{tailnet}/posture/integrations | Create a posture integration |
| [**delete_posture_integration**](DevicePostureApi.md#delete_posture_integration) | **DELETE** /posture/integrations/{id} | Delete a posture integration |
| [**get_posture_integration**](DevicePostureApi.md#get_posture_integration) | **GET** /posture/integrations/{id} | Get a posture integration |
| [**get_posture_integrations**](DevicePostureApi.md#get_posture_integrations) | **GET** /tailnet/{tailnet}/posture/integrations | List all posture integrations |
| [**update_posture_integration**](DevicePostureApi.md#update_posture_integration) | **PATCH** /posture/integrations/{id} | Update a posture integration |


## create_posture_integration

> <PostureIntegration> create_posture_integration(tailnet, opts)

Create a posture integration

Create a posture integration, returning the resulting [PostureIntegration](#model/postureintegration).  Must include `provider` and `clientSecret`.  Currently, only one integration for each provider is supported.  OAuth Scope: `feature_settings`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicePostureApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  posture_integration: OpenapiClient::PostureIntegration.new # PostureIntegration | 
}

begin
  # Create a posture integration
  result = api_instance.create_posture_integration(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicePostureApi->create_posture_integration: #{e}"
end
```

#### Using the create_posture_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostureIntegration>, Integer, Hash)> create_posture_integration_with_http_info(tailnet, opts)

```ruby
begin
  # Create a posture integration
  data, status_code, headers = api_instance.create_posture_integration_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostureIntegration>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicePostureApi->create_posture_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **posture_integration** | [**PostureIntegration**](PostureIntegration.md) |  | [optional] |

### Return type

[**PostureIntegration**](PostureIntegration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_posture_integration

> delete_posture_integration(id)

Delete a posture integration

Delete a specific posture integration.  OAuth Scope: `feature_settings`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicePostureApi.new
id = 'p56wQiqrn7mfKTM59' # String | Unique identifier for a posture integration.

begin
  # Delete a posture integration
  api_instance.delete_posture_integration(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicePostureApi->delete_posture_integration: #{e}"
end
```

#### Using the delete_posture_integration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_posture_integration_with_http_info(id)

```ruby
begin
  # Delete a posture integration
  data, status_code, headers = api_instance.delete_posture_integration_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicePostureApi->delete_posture_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for a posture integration. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_posture_integration

> <PostureIntegration> get_posture_integration(id)

Get a posture integration

Gets the posture integration identified by `{id}`.  OAuth Scope: `feature_settings:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicePostureApi.new
id = 'p56wQiqrn7mfKTM59' # String | Unique identifier for a posture integration.

begin
  # Get a posture integration
  result = api_instance.get_posture_integration(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicePostureApi->get_posture_integration: #{e}"
end
```

#### Using the get_posture_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostureIntegration>, Integer, Hash)> get_posture_integration_with_http_info(id)

```ruby
begin
  # Get a posture integration
  data, status_code, headers = api_instance.get_posture_integration_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostureIntegration>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicePostureApi->get_posture_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for a posture integration. |  |

### Return type

[**PostureIntegration**](PostureIntegration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_posture_integrations

> <GetPostureIntegrations200Response> get_posture_integrations(tailnet)

List all posture integrations

List all of the posture integrations for a tailnet.  OAuth Scope: `feature_settings:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicePostureApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 

begin
  # List all posture integrations
  result = api_instance.get_posture_integrations(tailnet)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicePostureApi->get_posture_integrations: #{e}"
end
```

#### Using the get_posture_integrations_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<GetPostureIntegrations200Response>, Integer, Hash)> get_posture_integrations_with_http_info(tailnet)

```ruby
begin
  # List all posture integrations
  data, status_code, headers = api_instance.get_posture_integrations_with_http_info(tailnet)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <GetPostureIntegrations200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicePostureApi->get_posture_integrations_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |

### Return type

[**GetPostureIntegrations200Response**](GetPostureIntegrations200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_posture_integration

> <PostureIntegration> update_posture_integration(id, opts)

Update a posture integration

Updates the posture integration identified by `{id}`. You may omit the `clientSecret` from your request to retain the previously configured `clientSecret`.  OAuth Scope: `feature_settings`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicePostureApi.new
id = 'p56wQiqrn7mfKTM59' # String | Unique identifier for a posture integration.
opts = {
  posture_integration: OpenapiClient::PostureIntegration.new # PostureIntegration | 
}

begin
  # Update a posture integration
  result = api_instance.update_posture_integration(id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicePostureApi->update_posture_integration: #{e}"
end
```

#### Using the update_posture_integration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PostureIntegration>, Integer, Hash)> update_posture_integration_with_http_info(id, opts)

```ruby
begin
  # Update a posture integration
  data, status_code, headers = api_instance.update_posture_integration_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PostureIntegration>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicePostureApi->update_posture_integration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for a posture integration. |  |
| **posture_integration** | [**PostureIntegration**](PostureIntegration.md) |  | [optional] |

### Return type

[**PostureIntegration**](PostureIntegration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

