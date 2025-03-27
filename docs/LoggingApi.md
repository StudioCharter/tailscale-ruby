# OpenapiClient::LoggingApi

All URIs are relative to *https://api.tailscale.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**disable_log_streaming**](LoggingApi.md#disable_log_streaming) | **DELETE** /tailnet/{tailnet}/logging/{logType}/stream | Disable log streaming |
| [**get_aws_external_id**](LoggingApi.md#get_aws_external_id) | **POST** /tailnet/{tailnet}/aws-external-id | Create or get AWS external id |
| [**get_log_streaming_configuration**](LoggingApi.md#get_log_streaming_configuration) | **GET** /tailnet/{tailnet}/logging/{logType}/stream | Get log streaming configuration |
| [**get_log_streaming_status**](LoggingApi.md#get_log_streaming_status) | **GET** /tailnet/{tailnet}/logging/{logType}/stream/status | Get log streaming status |
| [**list_configuration_audit_logs**](LoggingApi.md#list_configuration_audit_logs) | **GET** /tailnet/{tailnet}/logging/configuration | List configuration audit logs |
| [**list_network_flow_logs**](LoggingApi.md#list_network_flow_logs) | **GET** /tailnet/{tailnet}/logging/network | List network flow logs |
| [**set_log_streaming_configuration**](LoggingApi.md#set_log_streaming_configuration) | **PUT** /tailnet/{tailnet}/logging/{logType}/stream | Set log streaming configuration |
| [**validate_aws_external_id**](LoggingApi.md#validate_aws_external_id) | **POST** /tailnet/{tailnet}/aws-external-id/{id}/validate-aws-trust-policy | Validate external ID integration with IAM role trust policy |


## disable_log_streaming

> disable_log_streaming(tailnet, log_type)

Disable log streaming

Delete the log streaming configuration for the provided log type.  OAuth Scope: `log_streaming`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::LoggingApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
log_type = OpenapiClient::LogType::CONFIGURATION # LogType | The type of log.

begin
  # Disable log streaming
  api_instance.disable_log_streaming(tailnet, log_type)
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->disable_log_streaming: #{e}"
end
```

#### Using the disable_log_streaming_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> disable_log_streaming_with_http_info(tailnet, log_type)

```ruby
begin
  # Disable log streaming
  data, status_code, headers = api_instance.disable_log_streaming_with_http_info(tailnet, log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->disable_log_streaming_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **log_type** | [**LogType**](.md) | The type of log. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_aws_external_id

> <AwsExternalId> get_aws_external_id(tailnet, opts)

Create or get AWS external id

Get an AWS external id to use for streaming tailnet logs to S3 using role-based authentication, creating a new one for this tailnet when necessary.  OAuth Scope: `log_streaming`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::LoggingApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  get_aws_external_id_request: OpenapiClient::GetAwsExternalIdRequest.new # GetAwsExternalIdRequest | 
}

begin
  # Create or get AWS external id
  result = api_instance.get_aws_external_id(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->get_aws_external_id: #{e}"
end
```

#### Using the get_aws_external_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AwsExternalId>, Integer, Hash)> get_aws_external_id_with_http_info(tailnet, opts)

```ruby
begin
  # Create or get AWS external id
  data, status_code, headers = api_instance.get_aws_external_id_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AwsExternalId>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->get_aws_external_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **get_aws_external_id_request** | [**GetAwsExternalIdRequest**](GetAwsExternalIdRequest.md) |  | [optional] |

### Return type

[**AwsExternalId**](AwsExternalId.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_log_streaming_configuration

> <LogstreamEndpointConfiguration> get_log_streaming_configuration(tailnet, log_type)

Get log streaming configuration

Retrieve the log streaming configuration for the provided log type.  OAuth Scope: `log_streaming:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::LoggingApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
log_type = OpenapiClient::LogType::CONFIGURATION # LogType | The type of log.

begin
  # Get log streaming configuration
  result = api_instance.get_log_streaming_configuration(tailnet, log_type)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->get_log_streaming_configuration: #{e}"
end
```

#### Using the get_log_streaming_configuration_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogstreamEndpointConfiguration>, Integer, Hash)> get_log_streaming_configuration_with_http_info(tailnet, log_type)

```ruby
begin
  # Get log streaming configuration
  data, status_code, headers = api_instance.get_log_streaming_configuration_with_http_info(tailnet, log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogstreamEndpointConfiguration>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->get_log_streaming_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **log_type** | [**LogType**](.md) | The type of log. |  |

### Return type

[**LogstreamEndpointConfiguration**](LogstreamEndpointConfiguration.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_log_streaming_status

> <LogstreamEndpointPublishingStatus> get_log_streaming_status(tailnet, log_type)

Get log streaming status

Retrieve the log streaming status for the provided log type.  OAuth Scope: `log_streaming:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::LoggingApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
log_type = OpenapiClient::LogType::CONFIGURATION # LogType | The type of log.

begin
  # Get log streaming status
  result = api_instance.get_log_streaming_status(tailnet, log_type)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->get_log_streaming_status: #{e}"
end
```

#### Using the get_log_streaming_status_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogstreamEndpointPublishingStatus>, Integer, Hash)> get_log_streaming_status_with_http_info(tailnet, log_type)

```ruby
begin
  # Get log streaming status
  data, status_code, headers = api_instance.get_log_streaming_status_with_http_info(tailnet, log_type)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogstreamEndpointPublishingStatus>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->get_log_streaming_status_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **log_type** | [**LogType**](.md) | The type of log. |  |

### Return type

[**LogstreamEndpointPublishingStatus**](LogstreamEndpointPublishingStatus.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_configuration_audit_logs

> <ListConfigurationAuditLogs200Response> list_configuration_audit_logs(tailnet, start, _end, opts)

List configuration audit logs

List all configuration audit logs for a tailnet.  OAuth Scope: `logs:configuration:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::LoggingApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
start = '2023-12-19T16:39:57-08:00' # String | The start of the time window for which to retrieve logs, in RFC 3339 format.
_end = '2023-12-22T02:15:23-08:00' # String | The end of the time window for which to retrieve logs, in RFC 3339 format.
opts = {
  actor: ['inner_example'], # Array<String> | List of filters on actors, either exact actor IDs or a wildcard search on login name or display name indicated as `~search`.
  target: ['inner_example'], # Array<String> | List of target elements for which to filter, attempts to match any part of any of the targets to any of the given strings.
  event: ['ADMIN_CONSOLE.LOGIN'] # Array<String> | List of events for which to filter.
}

begin
  # List configuration audit logs
  result = api_instance.list_configuration_audit_logs(tailnet, start, _end, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->list_configuration_audit_logs: #{e}"
end
```

#### Using the list_configuration_audit_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListConfigurationAuditLogs200Response>, Integer, Hash)> list_configuration_audit_logs_with_http_info(tailnet, start, _end, opts)

```ruby
begin
  # List configuration audit logs
  data, status_code, headers = api_instance.list_configuration_audit_logs_with_http_info(tailnet, start, _end, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListConfigurationAuditLogs200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->list_configuration_audit_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **start** | **String** | The start of the time window for which to retrieve logs, in RFC 3339 format. |  |
| **_end** | **String** | The end of the time window for which to retrieve logs, in RFC 3339 format. |  |
| **actor** | [**Array&lt;String&gt;**](String.md) | List of filters on actors, either exact actor IDs or a wildcard search on login name or display name indicated as &#x60;~search&#x60;. | [optional] |
| **target** | [**Array&lt;String&gt;**](String.md) | List of target elements for which to filter, attempts to match any part of any of the targets to any of the given strings. | [optional] |
| **event** | [**Array&lt;String&gt;**](String.md) | List of events for which to filter. | [optional] |

### Return type

[**ListConfigurationAuditLogs200Response**](ListConfigurationAuditLogs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_network_flow_logs

> <ListNetworkFlowLogs200Response> list_network_flow_logs(tailnet, start, _end)

List network flow logs

List all network flow logs for a tailnet.  OAuth Scope: `logs:network:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::LoggingApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
start = '2023-12-19T16:39:57-08:00' # String | The start of the time window for which to retrieve logs, in RFC 3339 format.
_end = '2023-12-22T02:15:23-08:00' # String | The end of the time window for which to retrieve logs, in RFC 3339 format.

begin
  # List network flow logs
  result = api_instance.list_network_flow_logs(tailnet, start, _end)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->list_network_flow_logs: #{e}"
end
```

#### Using the list_network_flow_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListNetworkFlowLogs200Response>, Integer, Hash)> list_network_flow_logs_with_http_info(tailnet, start, _end)

```ruby
begin
  # List network flow logs
  data, status_code, headers = api_instance.list_network_flow_logs_with_http_info(tailnet, start, _end)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListNetworkFlowLogs200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->list_network_flow_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **start** | **String** | The start of the time window for which to retrieve logs, in RFC 3339 format. |  |
| **_end** | **String** | The end of the time window for which to retrieve logs, in RFC 3339 format. |  |

### Return type

[**ListNetworkFlowLogs200Response**](ListNetworkFlowLogs200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_log_streaming_configuration

> set_log_streaming_configuration(tailnet, log_type, opts)

Set log streaming configuration

Set the log streaming configuration for the provided log type.  OAuth Scope: `log_streaming`. `device_invites` and `policy_file` are also required if streaming to a [private endpoint](https://tailscale.com/kb/1255/log-streaming#private-endpoints). 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::LoggingApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
log_type = OpenapiClient::LogType::CONFIGURATION # LogType | The type of log.
opts = {
  logstream_endpoint_configuration: OpenapiClient::LogstreamEndpointConfiguration.new # LogstreamEndpointConfiguration | The [LogstreamEndpointConfiguration](#model/logstreamendpointconfiguration) to set. `logType` is specified in the request URL rather than the body. 
}

begin
  # Set log streaming configuration
  api_instance.set_log_streaming_configuration(tailnet, log_type, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->set_log_streaming_configuration: #{e}"
end
```

#### Using the set_log_streaming_configuration_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_log_streaming_configuration_with_http_info(tailnet, log_type, opts)

```ruby
begin
  # Set log streaming configuration
  data, status_code, headers = api_instance.set_log_streaming_configuration_with_http_info(tailnet, log_type, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->set_log_streaming_configuration_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **log_type** | [**LogType**](.md) | The type of log. |  |
| **logstream_endpoint_configuration** | [**LogstreamEndpointConfiguration**](LogstreamEndpointConfiguration.md) | The [LogstreamEndpointConfiguration](#model/logstreamendpointconfiguration) to set. &#x60;logType&#x60; is specified in the request URL rather than the body.  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## validate_aws_external_id

> validate_aws_external_id(tailnet, id, opts)

Validate external ID integration with IAM role trust policy

Validate that Tailscale can assume your IAM role with (and only with) this external ID.  OAuth Scope: `log_streaming`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::LoggingApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
id = '60fe9ce7-7791-4ab3-ab34-4294f5972725' # String | The AWS external ID to validate.
opts = {
  validate_aws_external_id_request: OpenapiClient::ValidateAwsExternalIdRequest.new # ValidateAwsExternalIdRequest | 
}

begin
  # Validate external ID integration with IAM role trust policy
  api_instance.validate_aws_external_id(tailnet, id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->validate_aws_external_id: #{e}"
end
```

#### Using the validate_aws_external_id_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> validate_aws_external_id_with_http_info(tailnet, id, opts)

```ruby
begin
  # Validate external ID integration with IAM role trust policy
  data, status_code, headers = api_instance.validate_aws_external_id_with_http_info(tailnet, id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling LoggingApi->validate_aws_external_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **id** | **String** | The AWS external ID to validate. |  |
| **validate_aws_external_id_request** | [**ValidateAwsExternalIdRequest**](ValidateAwsExternalIdRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

