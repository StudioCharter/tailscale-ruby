# OpenapiClient::SetDnsNameservers200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dns** | **Array&lt;String&gt;** | DNS nameservers.  | [optional] |
| **magic_dns** | **Boolean** | Whether MagicDNS is active for this tailnet.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::SetDnsNameservers200Response.new(
  dns: [8.8.8.8, 1.2.3.4],
  magic_dns: true
)
```

