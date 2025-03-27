# OpenapiClient::DeviceClientConnectivity

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **endpoints** | **Array&lt;String&gt;** | Client&#39;s magicsock UDP IP:port endpoints (IPv4 or IPv6).  | [optional] |
| **mapping_varies_by_dest_ip** | **Boolean** | &#39;true&#39; if the host&#39;s NAT mappings vary based on the destination IP.  | [optional] |
| **latency** | [**Hash&lt;String, DeviceClientConnectivityLatencyValue&gt;**](DeviceClientConnectivityLatencyValue.md) | Map of DERP server locations and their current latency. | [optional] |
| **client_supports** | [**DeviceClientConnectivityClientSupports**](DeviceClientConnectivityClientSupports.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DeviceClientConnectivity.new(
  endpoints: [199.9.14.201:59128, 192.68.0.21:59128],
  mapping_varies_by_dest_ip: false,
  latency: {Dallas&#x3D;{latencyMs&#x3D;60.463043}, New York City&#x3D;{preferred&#x3D;true, latencyMs&#x3D;31.323811}},
  client_supports: null
)
```

