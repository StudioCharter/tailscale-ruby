# OpenapiClient::GetAwsExternalIdRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reusable** | **Boolean** | If set to true, this same AWS external id will be returned on future calls to this endpoint, if and only if those calls also mark &#x60;reusable&#x60; as true, and the ID has not yet been linked with an AWS account. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::GetAwsExternalIdRequest.new(
  reusable: null
)
```

