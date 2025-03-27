# OpenapiClient::CreateDeviceInvitesRequestInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **multi_use** | **Boolean** | Whether the invite can be accepted more than once. When set to &#x60;true&#x60;, it results in an invite that can be accepted up to 1,000 times.  | [optional] |
| **allow_exit_node** | **Boolean** | Whether the invited user can use the device as an exit node when it advertises as one.  | [optional] |
| **email** | **String** | The email to send the created invite to. If not set, the endpoint generates and returns an invite URL (but doesn&#39;t send it out).  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateDeviceInvitesRequestInner.new(
  multi_use: false,
  allow_exit_node: false,
  email: user@example.com
)
```

