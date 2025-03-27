# OpenapiClient::DeviceInvite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the invite. Supply this value wherever {deviceInviteId} is indicated in the endpoint.  | [optional] |
| **created** | **Time** | The creation time of the invite.  | [optional] |
| **tailnet_id** | **Float** | The ID of the tailnet to which the shared device belongs.  | [optional] |
| **device_id** | **Float** | The ID of the device being shared.  | [optional] |
| **sharer_id** | **Float** | The ID of the user who created the share invite.  | [optional] |
| **multi_use** | **Boolean** | Specifies whether this device invite can be accepted more than once.  | [optional] |
| **allow_exit_node** | **Boolean** | Specifies whether the invited user is able to use the device as an exit node when the device is advertising as one.  | [optional] |
| **email** | **String** | The email to which the invite was sent. If empty, the invite was not emailed to anyone, but the inviteUrl can be shared manually.  | [optional] |
| **last_email_sent_at** | **Time** | The last time the invite was attempted to be sent to Email. Only ever set if &#x60;email&#x60; is not empty.  | [optional] |
| **invite_url** | **String** | The link to accept the invite. Anyone with this link can accept the invite. It is not restricted to the person to which the invite was emailed.  | [optional] |
| **accepted** | **Boolean** | &#x60;true&#x60; when the share invite has been accepted.  | [optional] |
| **accepted_by** | [**DeviceInviteAcceptedBy**](DeviceInviteAcceptedBy.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DeviceInvite.new(
  id: 12346,
  created: 2024-04-03T21:38:49.333829261Z,
  tailnet_id: 59954,
  device_id: 11055,
  sharer_id: 22012,
  multi_use: false,
  allow_exit_node: false,
  email: user@example.com,
  last_email_sent_at: 2024-04-03T21:38:49.333829261Z,
  invite_url: https://login.tailscale.com/admin/invite/&lt;code&gt;,
  accepted: false,
  accepted_by: null
)
```

