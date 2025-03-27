# OpenapiClient::DeviceClientConnectivityLatencyValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **preferred** | **Boolean** | &#39;true&#39; for the node&#39;s preferred DERP server for incoming traffic.  | [optional] |
| **latency_ms** | **Float** | Current latency to DERP server.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DeviceClientConnectivityLatencyValue.new(
  preferred: null,
  latency_ms: null
)
```

