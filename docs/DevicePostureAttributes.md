# OpenapiClient::DevicePostureAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **attributes** | [**Hash&lt;String, ValidateAndTestPolicyFileRequestOneOfInnerSrcPostureAttrsValue&gt;**](ValidateAndTestPolicyFileRequestOneOfInnerSrcPostureAttrsValue.md) | Contains all the posture attributes assigned to a node. Attribute values can be strings, numbers or booleans.  | [optional] |
| **expiries** | **Hash&lt;String, Time&gt;** | Contains the expiry time for each posture attribute, if set.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DevicePostureAttributes.new(
  attributes: null,
  expiries: null
)
```

