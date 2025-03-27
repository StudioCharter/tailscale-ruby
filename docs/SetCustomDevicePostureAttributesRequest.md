# OpenapiClient::SetCustomDevicePostureAttributesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **value** | [**SetCustomDevicePostureAttributesRequestValue**](SetCustomDevicePostureAttributesRequestValue.md) |  | [optional] |
| **expiry** | **Time** | An optional expiry time for a given posture attribute. If set, Tailscale will automatically remove the attribute within a few minutes after the specified time.  | [optional] |
| **comment** | **String** | An optional comment indicating a reason why an attribute is set, which will be added to the audit log.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SetCustomDevicePostureAttributesRequest.new(
  value: null,
  expiry: 2022-12-01T05:23:30Z,
  comment: null
)
```

