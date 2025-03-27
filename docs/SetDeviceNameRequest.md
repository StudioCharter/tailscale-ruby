# OpenapiClient::SetDeviceNameRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The new name for the device.  This can be provided as either the fully qualified domain name for the device (e.g. \&quot;nodename.your-domain.ts.net\&quot;) or just the base name (e.g. \&quot;nodename\&quot;).  If &#x60;name&#x60; is unset or provided empty, the device&#39;s name is reset to be generated from its OS hostname.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SetDeviceNameRequest.new(
  name: dev-server
)
```

