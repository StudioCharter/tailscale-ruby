# OpenapiClient::ConfigurationAuditLogTarget

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique ID (user id, tailnet SID, or node id) of the target. | [optional] |
| **name** | **String** | Name of the entity at time of the action. | [optional] |
| **type** | **String** | The entity type of Target. | [optional] |
| **is_ephemeral** | **Boolean** | Indicates whether the target is ephemeral. Its value should only be set if &#x60;type&#x60; is &#x60;NODE&#x60;&#x60;. | [optional] |
| **property** | **String** | The property name on this target which was updated by the event. When empty, the event didn&#39;t update any fields on this target. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ConfigurationAuditLogTarget.new(
  id: nBLYviWLGB21KTM59,
  name: silver-robin-horse-albatross-armadillo.taile18a.ts.net,
  type: NODE,
  is_ephemeral: true,
  property: ALLOWED_IPS
)
```

