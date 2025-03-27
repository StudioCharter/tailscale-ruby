# OpenapiClient::DnsSearchPaths

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **search_paths** | **Array&lt;String&gt;** | The search domains for the given tailnet.  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DnsSearchPaths.new(
  search_paths: [user1.example.com, user2.example.com]
)
```

