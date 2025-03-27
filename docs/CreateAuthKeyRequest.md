# OpenapiClient::CreateAuthKeyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capabilities** | [**KeyCapabilities**](KeyCapabilities.md) |  |  |
| **expiry_seconds** | **Float** | Specifies the duration in seconds until the key should expire. Defaults to 90 days if not supplied.  | [optional] |
| **description** | **String** | A short string specifying the purpose of the key. Can be a maximum of 50 alphanumeric characters. Hyphens and spaces are also allowed.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateAuthKeyRequest.new(
  capabilities: null,
  expiry_seconds: 86400,
  description: dev access
)
```

