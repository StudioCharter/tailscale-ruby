# OpenapiClient::Key

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **key** | **String** | The secret key material (only populated at creation time). | [optional] |
| **created** | **Time** |  | [optional] |
| **expires** | **Time** |  | [optional] |
| **revoked** | **Time** |  | [optional] |
| **capabilities** | [**KeyCapabilities**](KeyCapabilities.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **invalid** | **Boolean** | Response for a revoked (deleted) or expired key will have an &#x60;invalid&#x60; field set to true.  | [optional] |
| **user_id** | **String** | ID of the user who created this key, empty for keys created by OAuth clients.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Key.new(
  id: k123456CNTRL,
  key: tskey-auth-xxxxxxxxxxxx-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx,
  created: 2021-12-09T23:22:39Z,
  expires: 2022-03-09T23:22:39Z,
  revoked: 2022-03-12T23:22:39Z,
  capabilities: null,
  description: dev access,
  invalid: false,
  user_id: uscwcTtzzo11KTM59
)
```

