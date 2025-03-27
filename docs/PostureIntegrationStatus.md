# OpenapiClient::PostureIntegrationStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_sync** | **String** | Timestamp of the last synchronization with the device posture provider, in RFC 3339 format. | [optional] |
| **error** | **String** | If the last synchronization failed, this shows the error message associated with the failed synchronization. | [optional] |
| **provider_host_count** | **Integer** | The number of devices known to the provider. | [optional] |
| **matched_count** | **Integer** | The number of Tailscale nodes that were matched with provider. | [optional] |
| **possible_matched_count** | **Integer** | The number of Tailscale nodes with identifiers for matching. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PostureIntegrationStatus.new(
  last_sync: 2024-06-18T08:44:33.872282-05:00,
  error: Invalid Tenant ID.
Microsoft error: AADSTS90002: Tenant &#39;d1ae389b-5207-43a2-afca-2de6b03ac7e3&#39; not found. Check to make sure you have the correct tenant ID and are signing into the correct cloud. Check with your subscription administrator, this may happen if there are no active subscriptions for the tenant. Trace ID: f6237360-98a2-4889-913b-e3d80aba7d00 Correlation ID: a2024a6e-7757-4406-8a8d-1b6ac2e03ad5 Timestamp: 2024-06-18 13:44:33Z,
  provider_host_count: 98,
  matched_count: 11,
  possible_matched_count: 16
)
```

