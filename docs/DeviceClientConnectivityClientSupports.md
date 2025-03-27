# OpenapiClient::DeviceClientConnectivityClientSupports

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **hair_pinning** | **Boolean** | &#39;true&#39; if your router can route connections from endpoints on your LAN back to your LAN using those endpoints’ globally-mapped IPv4 addresses/ports.  | [optional] |
| **ipv6** | **Boolean** | &#39;true&#39; if the device OS supports IPv6, regardless of whether IPv6 internet connectivity is available.  | [optional] |
| **pcp** | **Boolean** | &#39;true&#39; if PCP port-mapping service exists on your router.  | [optional] |
| **pmp** | **Boolean** | &#39;true&#39; if NAT-PMP port-mapping service exists on your router.  | [optional] |
| **udp** | **Boolean** | &#39;true&#39; if UDP traffic is enabled on the current network; if &#39;false&#39;, Tailscale may be unable to make direct connections, and will rely on our DERP servers.  | [optional] |
| **upnp** | **Boolean** | &#39;true&#39; if UPnP port-mapping service exists on your router.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DeviceClientConnectivityClientSupports.new(
  hair_pinning: false,
  ipv6: false,
  pcp: false,
  pmp: false,
  udp: false,
  upnp: false
)
```

