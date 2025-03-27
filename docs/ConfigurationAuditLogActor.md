# OpenapiClient::ConfigurationAuditLogActor

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The ID (user ID or node ID) of the actor. | [optional] |
| **type** | **String** | The entity type of the actor. | [optional] |
| **login_name** | **String** | The login name of the actor at time of the action. | [optional] |
| **display_name** | **String** | The display name of the actor at time of the action. | [optional] |
| **tags** | **Array&lt;String&gt;** | Indicates the tags owning a node. Its value is only set if &#x60;type&#x60; is &#x60;NODE&#x60;. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ConfigurationAuditLogActor.new(
  id: uZKk3KSfrH11KTM59,
  type: USER,
  login_name: lion.dahlia.armadillo@example.com,
  display_name: null,
  tags: [server, datacenter1]
)
```

