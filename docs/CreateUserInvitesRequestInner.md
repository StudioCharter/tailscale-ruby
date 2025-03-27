# OpenapiClient::CreateUserInvitesRequestInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **role** | **String** | Optionally specifies a user role to assign the invited user.  | [optional][default to &#39;member&#39;] |
| **email** | **String** | Optionally specifies the email to send the created invite. If not set, the endpoint generates and returns an invite URL, but does not email it out.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::CreateUserInvitesRequestInner.new(
  role: admin,
  email: user@example.com
)
```

