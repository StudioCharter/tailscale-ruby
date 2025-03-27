# OpenapiClient::AcceptDeviceInvite200ResponseSharer

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID of the user who created the share invite.  | [optional] |
| **display_name** | **String** | The display name of the user who created the share invite.  | [optional] |
| **login_name** | **String** | The email address of the user who created the share invite.  | [optional] |
| **profile_pic_url** | **String** | The profile pic URL for the user who created the share invite.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AcceptDeviceInvite200ResponseSharer.new(
  id: 22012,
  display_name: Some User,
  login_name: someuser@example.com,
  profile_pic_url: 
)
```

