# OpenapiClient::AcceptDeviceInvite200ResponseDevice

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The &#x60;nodeId&#x60; for the device.  | [optional] |
| **os** | **String** | The operating system that the device is running.  | [optional] |
| **name** | **String** | The name of the device.  | [optional] |
| **fqdn** | **String** | The MagicDNS name of the device. Learn more about MagicDNS at https://tailscale.com/kb/1081/.  | [optional] |
| **ipv4** | **String** | The IPv4 address of the device.  | [optional] |
| **ipv6** | **String** | The IPv6 address of the device.  | [optional] |
| **include_exit_node** | **Boolean** | Specifies whether the invited user is able to use the device as an exit node when the device is advertising as one.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AcceptDeviceInvite200ResponseDevice.new(
  id: 12346,
  os: iOS,
  name: my-phone,
  fqdn: my-phone.something.ts.net,
  ipv4: 100.x.y.z,
  ipv6: fd7a:115c:x::y:z,
  include_exit_node: false
)
```

