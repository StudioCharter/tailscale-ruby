# OpenapiClient::UpdateWebhookRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **subscriptions** | **Array&lt;String&gt;** | The list of subscribed events that trigger POST requests to the configured endpoint URL. Learn more about [webhook events](/kb/1213/webhooks#events).  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateWebhookRequest.new(
  subscriptions: [nodeCreated, userDeleted]
)
```

