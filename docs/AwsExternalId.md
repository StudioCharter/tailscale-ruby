# OpenapiClient::AwsExternalId

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **external_id** | **String** | The external id that Tailscale will supply to AWS when authenticating using role-based authentication. | [optional] |
| **tailscale_aws_account_id** | **String** | The AWS account id that Tailscale will supply to AWS when authenticating using role-based authentication. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::AwsExternalId.new(
  external_id: 60fe9ce7-7791-4ab3-ab34-4294f5972725,
  tailscale_aws_account_id: 1234567890
)
```

