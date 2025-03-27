# OpenapiClient::Contact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **email** | **String** | The contact&#39;s email address. | [optional] |
| **fallback_email** | **String** | The email address used when contact&#39;s email address has not been verified. | [optional] |
| **needs_verification** | **Boolean** | Indicates whether the contact&#39;s email address still needs to be verified. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Contact.new(
  email: user@example.com,
  fallback_email: otheruser@example.com,
  needs_verification: true
)
```

