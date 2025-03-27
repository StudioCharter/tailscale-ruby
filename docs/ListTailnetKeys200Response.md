# OpenapiClient::ListTailnetKeys200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **keys** | [**Array&lt;Key&gt;**](Key.md) | A list of the active keys. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListTailnetKeys200Response.new(
  keys: [{&quot;id&quot;:&quot;XXXX14CNTRL&quot;,&quot;description&quot;:&quot;test key&quot;,&quot;userId&quot;:&quot;uscwcTtzzo11KTM59&quot;},{&quot;id&quot;:&quot;XXXXZ3CNTRL&quot;,&quot;description&quot;:&quot;production key&quot;,&quot;userId&quot;:&quot;uscwcTtzzo11KTM59&quot;},{&quot;id&quot;:&quot;XXXX43CNTRL&quot;},{&quot;id&quot;:&quot;XXXXgj1CNTRL&quot;,&quot;userId&quot;:&quot;uscwcTtzzo11KTM59&quot;}]
)
```

