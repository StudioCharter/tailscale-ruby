# OpenapiClient::CreateWebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint_url** | **String** | The endpoint that events are sent to from Tailscale via POST requests.  |  |
| **provider_type** | [**ProviderType**](ProviderType.md) |  | [optional] |
| **subscriptions** | **Array&lt;String&gt;** | The list of subscribed events that trigger POST requests to the configured endpoint URL. Learn more about [webhook events](/kb/1213/webhooks#events).  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateWebhookRequest.new(
  endpoint_url: https://example.com/endpoint,
  provider_type: null,
  subscriptions: [nodeCreated, userDeleted]
)
```

