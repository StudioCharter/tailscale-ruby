# OpenapiClient::AcceptDeviceInviteRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **invite** | **String** | The URL of the invite (in the form &#x60;https://login.tailscale.com/admin/invite/{code}&#x60;) or the &#x60;{code}&#x60; component of the URL.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AcceptDeviceInviteRequest.new(
  invite: https://login.tailscale.com/admin/invite/xxxxxx
)
```

