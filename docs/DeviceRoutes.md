# OpenapiClient::DeviceRoutes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **advertised_routes** | **Array&lt;String&gt;** | The subnets this device requests to expose.  | [optional] |
| **enabled_routes** | **Array&lt;String&gt;** | The subnet routes for this device that have been approved by a tailnet admin.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DeviceRoutes.new(
  advertised_routes: [10.0.0.0/16, 192.168.1.0/24],
  enabled_routes: [10.0.0.0/16, 192.168.1.0/24]
)
```

