# OpenapiClient::SetDeviceTagsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tags** | **Array&lt;String&gt;** | The new list of tags for the device.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SetDeviceTagsRequest.new(
  tags: [&quot;tag:foo&quot;,&quot;tag:bar&quot;]
)
```

