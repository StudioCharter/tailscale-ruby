# OpenapiClient::SetDeviceRoutesRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **routes** | **Array&lt;String&gt;** | The new list of enabled subnet routes.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SetDeviceRoutesRequest.new(
  routes: [&quot;10.0.0.0/16&quot;,&quot;192.168.1.0/24&quot;]
)
```

