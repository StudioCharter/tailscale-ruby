# OpenapiClient::TailnetSettingsApi

All URIs are relative to *https://api.tailscale.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_tailnet_settings**](TailnetSettingsApi.md#get_tailnet_settings) | **GET** /tailnet/{tailnet}/settings | Get tailnet settings |
| [**update_tailnet_settings**](TailnetSettingsApi.md#update_tailnet_settings) | **PATCH** /tailnet/{tailnet}/settings | Update tailnet settings |


## get_tailnet_settings

> <TailnetSettings> get_tailnet_settings(tailnet)

Get tailnet settings

Retrieve the settings for a specific tailnet.  OAuth Scope: `feature_settings:read` - required to view all settings except those goverened by the below scopes.  OAuth Scope: `logs:network:read` - required to view the `networkFlowLoggingOn` setting. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TailnetSettingsApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 

begin
  # Get tailnet settings
  result = api_instance.get_tailnet_settings(tailnet)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TailnetSettingsApi->get_tailnet_settings: #{e}"
end
```

#### Using the get_tailnet_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TailnetSettings>, Integer, Hash)> get_tailnet_settings_with_http_info(tailnet)

```ruby
begin
  # Get tailnet settings
  data, status_code, headers = api_instance.get_tailnet_settings_with_http_info(tailnet)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TailnetSettings>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TailnetSettingsApi->get_tailnet_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |

### Return type

[**TailnetSettings**](TailnetSettings.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_tailnet_settings

> <TailnetSettings> update_tailnet_settings(tailnet, opts)

Update tailnet settings

Update the settings for a specific tailnet.  OAuth Scope: `feature_settings` - required to update all settings except those goverened by the below scopes.  OAuth Scope: `logs:network` - required to view the `networkFlowLoggingOn` setting. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::TailnetSettingsApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  tailnet_settings: OpenapiClient::TailnetSettings.new # TailnetSettings | 
}

begin
  # Update tailnet settings
  result = api_instance.update_tailnet_settings(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling TailnetSettingsApi->update_tailnet_settings: #{e}"
end
```

#### Using the update_tailnet_settings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<TailnetSettings>, Integer, Hash)> update_tailnet_settings_with_http_info(tailnet, opts)

```ruby
begin
  # Update tailnet settings
  data, status_code, headers = api_instance.update_tailnet_settings_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <TailnetSettings>
rescue OpenapiClient::ApiError => e
  puts "Error when calling TailnetSettingsApi->update_tailnet_settings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **tailnet_settings** | [**TailnetSettings**](TailnetSettings.md) |  | [optional] |

### Return type

[**TailnetSettings**](TailnetSettings.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

