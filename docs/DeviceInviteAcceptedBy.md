# OpenapiClient::DeviceInviteAcceptedBy

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **Float** | The ID of the user who accepted the share invite.  | [optional] |
| **login_name** | **String** | The login name of the user who accepted the share invite.  | [optional] |
| **profile_pic_url** | **String** | The profile pic URL for the user who accepted the share invite.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DeviceInviteAcceptedBy.new(
  id: 33223,
  login_name: someone@example.com,
  profile_pic_url: 
)
```

