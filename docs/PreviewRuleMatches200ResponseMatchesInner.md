# OpenapiClient::PreviewRuleMatches200ResponseMatchesInner

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **users** | **Array&lt;String&gt;** | Source entities affected by the rule.  |  |
| **ports** | **Array&lt;String&gt;** | Destinations that can be accessed.  |  |
| **line_number** | **Float** | The rule&#39;s location in the policy file.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PreviewRuleMatches200ResponseMatchesInner.new(
  users: [&quot;*&quot;],
  ports: [&quot;*.*&quot;],
  line_number: 19
)
```

