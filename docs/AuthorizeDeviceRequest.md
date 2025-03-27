# OpenapiClient::AuthorizeDeviceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **authorized** | **Boolean** | - If &#x60;true&#x60;, authorize a new device or re-authorize a previously deauthorized device. - If &#x60;false&#x60;, deauthorize an authorized device.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AuthorizeDeviceRequest.new(
  authorized: null
)
```

