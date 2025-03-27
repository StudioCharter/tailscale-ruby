# OpenapiClient::ValidateAndTestPolicyFile200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **message** | **String** |  | [optional] |
| **data** | **Array&lt;Object&gt;** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ValidateAndTestPolicyFile200Response.new(
  message: test(s) failed,
  data: [{&quot;user&quot;:&quot;user1@example.com&quot;,&quot;errors&quot;:[&quot;address \&quot;2.2.2.2:22\&quot;: want: Drop, got: Accept&quot;]}]
)
```

