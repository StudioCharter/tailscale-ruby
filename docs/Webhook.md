# OpenapiClient::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoint_id** | **String** | ID of the webhook endpoint.  | [optional] |
| **endpoint_url** | **String** | The endpoint that events are sent to from Tailscale via POST requests.  | [optional] |
| **provider_type** | **String** | The provider type for the webhook destination, or an empty string if none are applicable. Outgoing webhook events are sent in the format expected by the provider type if non-empty.  | [optional] |
| **creator_login_name** | **String** | The login name for the creator of the webhook endpoint. In some cases, such as webhooks created with an OAuth client, this can be blank.  | [optional] |
| **created** | **Time** | The time the webhook endpoint was created.  | [optional] |
| **last_modified** | **Time** | The time the webhook endpoint was last modified.  | [optional] |
| **subscriptions** | **Array&lt;String&gt;** | The list of subscribed events that trigger POST requests to the configured endpoint URL. Learn more about [webhook events](/kb/1213/webhooks#events).  | [optional] |
| **secret** | **String** | The webhook secret associated with the endpoint. Only populated on creation or when the secret is rotated.  This secret is used for generating the &#x60;Tailscale-Webhook-Signature&#x60; header in requests sent to the endpoint URL. Learn more about [verifying webhook event signatures](/kb/1213/webhooks#verifying-an-event-signature).  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Webhook.new(
  endpoint_id: 123456,
  endpoint_url: https://example.com/endpoint,
  provider_type: slack,
  creator_login_name: user@example.com,
  created: 2022-12-01T05:23:30Z,
  last_modified: 2022-12-01T05:23:30Z,
  subscriptions: [nodeCreated, userDeleted],
  secret: xxxxx
)
```

