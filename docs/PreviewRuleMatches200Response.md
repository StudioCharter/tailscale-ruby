# OpenapiClient::PreviewRuleMatches200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **matches** | [**Array&lt;PreviewRuleMatches200ResponseMatchesInner&gt;**](PreviewRuleMatches200ResponseMatchesInner.md) |  |  |
| **type** | **String** | Echoes the &#x60;type&#x60; provided in the request.  |  |
| **preview_for** | **String** | Echoes the &#x60;previewFor&#x60; provided in the request.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PreviewRuleMatches200Response.new(
  matches: null,
  type: user,
  preview_for: user1@example.com
)
```

