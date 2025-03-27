# OpenapiClient::UpdateDeviceKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **key_expiry_disabled** | **Boolean** | - If &#x60;true&#x60;, disable the device&#39;s key expiry. The original key expiry time is still maintained. Upon re-enabling, the key will expire at that original time. - If &#x60;false&#x60;, enable the device&#39;s key expiry. Sets the key to expire at the original expiry time prior to disabling. The key may already have expired. In that case, the device must be re-authenticated.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UpdateDeviceKeyRequest.new(
  key_expiry_disabled: true
)
```

