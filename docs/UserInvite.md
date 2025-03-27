# OpenapiClient::UserInvite

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the invite. Supply this value wherever &#x60;userInviteId&#x60; is indicated in the endpoint.  |  |
| **role** | **String** | The tailnet user role to assign to the invited user upon accepting the invite.  |  |
| **tailnet_id** | **Float** | The ID of the tailnet to which the user was invited.  |  |
| **inviter_id** | **Float** | The ID of the user who created the invite.  |  |
| **email** | **String** | The email to which the invite was sent. If empty, the invite was not emailed to anyone, but the inviteUrl can be shared manually.  | [optional] |
| **last_email_sent_at** | **Time** | The last time the invite was attempted to be sent to Email. Only ever set if &#x60;email&#x60; is not empty.  | [optional] |
| **invite_url** | **String** | Included when &#x60;email&#x60; is not part of the tailnet&#39;s domain, or when &#x60;email&#x60; is empty. It is the link to accept the invite.  When included, anyone with this link can accept the invite. It is not restricted to the person to which the invite was emailed.  When &#x60;email&#x60; is part of the tailnet&#39;s domain (has the same @domain.com suffix as the tailnet), the user can join the tailnet automatically by logging in with their domain email at https://login.tailscale.com/start. They&#39;ll be assigned the specified &#x60;role&#x60; upon signing in for the first time.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UserInvite.new(
  id: 12346,
  role: admin,
  tailnet_id: 59954,
  inviter_id: 22012,
  email: user@example.com,
  last_email_sent_at: 2024-04-03T21:38:49.333829261Z,
  invite_url: https://login.tailscale.com/admin/invite/&lt;code&gt;
)
```

