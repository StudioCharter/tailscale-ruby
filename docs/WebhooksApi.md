# OpenapiClient::WebhooksApi

All URIs are relative to *https://api.tailscale.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_webhook**](WebhooksApi.md#create_webhook) | **POST** /tailnet/{tailnet}/webhooks | Create a webhook |
| [**delete_webhook**](WebhooksApi.md#delete_webhook) | **DELETE** /webhooks/{endpointId} | Delete webhook |
| [**get_webhook**](WebhooksApi.md#get_webhook) | **GET** /webhooks/{endpointId} | Get webhook |
| [**list_webhooks**](WebhooksApi.md#list_webhooks) | **GET** /tailnet/{tailnet}/webhooks | List webhooks |
| [**rotate_webhook_secret**](WebhooksApi.md#rotate_webhook_secret) | **POST** /webhooks/{endpointId}/rotate | Rotate webhook secret |
| [**test_webhook**](WebhooksApi.md#test_webhook) | **POST** /webhooks/{endpointId}/test | Test a webhook |
| [**update_webhook**](WebhooksApi.md#update_webhook) | **PATCH** /webhooks/{endpointId} | Update webhook |


## create_webhook

> <Webhook> create_webhook(tailnet, opts)

Create a webhook

Create a webhook within a tailnet.  OAuth Scope: `webhooks`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::WebhooksApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  create_webhook_request: OpenapiClient::CreateWebhookRequest.new({endpoint_url: 'https://example.com/endpoint', subscriptions: [nodeCreated,  userDeleted]}) # CreateWebhookRequest | 
}

begin
  # Create a webhook
  result = api_instance.create_webhook(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook: #{e}"
end
```

#### Using the create_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> create_webhook_with_http_info(tailnet, opts)

```ruby
begin
  # Create a webhook
  data, status_code, headers = api_instance.create_webhook_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->create_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **create_webhook_request** | [**CreateWebhookRequest**](CreateWebhookRequest.md) |  | [optional] |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_webhook

> delete_webhook(endpoint_id)

Delete webhook

Delete a specific webhook.  OAuth Scope: `webhooks`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::WebhooksApi.new
endpoint_id = 'endpoint_id_example' # String | ID for the webhook endpoint. 

begin
  # Delete webhook
  api_instance.delete_webhook(endpoint_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook: #{e}"
end
```

#### Using the delete_webhook_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_webhook_with_http_info(endpoint_id)

```ruby
begin
  # Delete webhook
  data, status_code, headers = api_instance.delete_webhook_with_http_info(endpoint_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->delete_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint_id** | **String** | ID for the webhook endpoint.  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_webhook

> <Webhook> get_webhook(endpoint_id)

Get webhook

Retrieve a specific webhook.  OAuth Scope: `webhooks:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::WebhooksApi.new
endpoint_id = 'endpoint_id_example' # String | ID for the webhook endpoint. 

begin
  # Get webhook
  result = api_instance.get_webhook(endpoint_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook: #{e}"
end
```

#### Using the get_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> get_webhook_with_http_info(endpoint_id)

```ruby
begin
  # Get webhook
  data, status_code, headers = api_instance.get_webhook_with_http_info(endpoint_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->get_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint_id** | **String** | ID for the webhook endpoint.  |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_webhooks

> <ListWebhooks200Response> list_webhooks(tailnet)

List webhooks

List all webhooks for a tailnet.  OAuth Scope: `webhooks:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::WebhooksApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 

begin
  # List webhooks
  result = api_instance.list_webhooks(tailnet)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->list_webhooks: #{e}"
end
```

#### Using the list_webhooks_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListWebhooks200Response>, Integer, Hash)> list_webhooks_with_http_info(tailnet)

```ruby
begin
  # List webhooks
  data, status_code, headers = api_instance.list_webhooks_with_http_info(tailnet)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListWebhooks200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->list_webhooks_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |

### Return type

[**ListWebhooks200Response**](ListWebhooks200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## rotate_webhook_secret

> <Webhook> rotate_webhook_secret(endpoint_id)

Rotate webhook secret

Rotate and generate a new secret for a specific webhook.  This secret is used for generating the `Tailscale-Webhook-Signature` header in requests sent to the endpoint URL. Learn more about [verifying webhook event signatures](/kb/1213/webhooks#verifying-an-event-signature).  OAuth Scope: `webhooks`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::WebhooksApi.new
endpoint_id = 'endpoint_id_example' # String | ID for the webhook endpoint. 

begin
  # Rotate webhook secret
  result = api_instance.rotate_webhook_secret(endpoint_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->rotate_webhook_secret: #{e}"
end
```

#### Using the rotate_webhook_secret_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> rotate_webhook_secret_with_http_info(endpoint_id)

```ruby
begin
  # Rotate webhook secret
  data, status_code, headers = api_instance.rotate_webhook_secret_with_http_info(endpoint_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->rotate_webhook_secret_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint_id** | **String** | ID for the webhook endpoint.  |  |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## test_webhook

> test_webhook(endpoint_id)

Test a webhook

Test a specific webhook by sending out a test event to the endpoint URL. This endpoint queues the event which is sent out asynchronously.  If your webhook is configured correctly, within a few seconds your webhook endpoint should receive an event with type of \"test\".  OAuth Scope: `webhooks`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::WebhooksApi.new
endpoint_id = 'endpoint_id_example' # String | ID for the webhook endpoint. 

begin
  # Test a webhook
  api_instance.test_webhook(endpoint_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->test_webhook: #{e}"
end
```

#### Using the test_webhook_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> test_webhook_with_http_info(endpoint_id)

```ruby
begin
  # Test a webhook
  data, status_code, headers = api_instance.test_webhook_with_http_info(endpoint_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->test_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint_id** | **String** | ID for the webhook endpoint.  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_webhook

> <Webhook> update_webhook(endpoint_id, opts)

Update webhook

Update a specific webhook.  OAuth Scope: `webhooks`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::WebhooksApi.new
endpoint_id = 'endpoint_id_example' # String | ID for the webhook endpoint. 
opts = {
  update_webhook_request: OpenapiClient::UpdateWebhookRequest.new # UpdateWebhookRequest | 
}

begin
  # Update webhook
  result = api_instance.update_webhook(endpoint_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook: #{e}"
end
```

#### Using the update_webhook_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Webhook>, Integer, Hash)> update_webhook_with_http_info(endpoint_id, opts)

```ruby
begin
  # Update webhook
  data, status_code, headers = api_instance.update_webhook_with_http_info(endpoint_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Webhook>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WebhooksApi->update_webhook_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint_id** | **String** | ID for the webhook endpoint.  |  |
| **update_webhook_request** | [**UpdateWebhookRequest**](UpdateWebhookRequest.md) |  | [optional] |

### Return type

[**Webhook**](Webhook.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

