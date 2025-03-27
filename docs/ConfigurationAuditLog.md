# OpenapiClient::ConfigurationAuditLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **event_time** | **String** | Timestamp of the audit log event, in RFC 3339 format. |  |
| **type** | **String** | The type of log (always \&quot;CONFIG\&quot;). |  |
| **deferred_at** | **String** | Timestamp recording the time that the audit log rate limiter enqueued the record to be logged at a future time, in RFC 3339 format. | [optional] |
| **event_group_id** | **String** | Identifier assigned to one or more audit log events, all of which are the result of a single operation. |  |
| **origin** | **String** | The initiator of the action that generated the event, typically an API or user interface, like the Tailscale admin panel. |  |
| **actor** | [**ConfigurationAuditLogActor**](ConfigurationAuditLogActor.md) |  |  |
| **target** | [**ConfigurationAuditLogTarget**](ConfigurationAuditLogTarget.md) |  |  |
| **action** | **String** | The type of change attempted against the &#x60;target&#x60;. |  |
| **old** | **Object** | The value of &#x60;target.property&#x60;&#x60; prior to the event. | [optional] |
| **new** | **Object** | The value of &#x60;target.property&#x60; after the event. | [optional] |
| **action_details** | **String** | Additional information about the event, such as a client-provided reason, if it exists. | [optional] |
| **error** | **String** | Provided when the configuration change failed to be completed. It is a user-presentable reason for the failure. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ConfigurationAuditLog.new(
  event_time: 2024-06-06T15:25:26.583893Z,
  type: null,
  deferred_at: 0001-01-01T00:00:00Z,
  event_group_id: 0378d8f57300d172ef7ae3826e097ef0,
  origin: ADMIN_CONSOLE,
  actor: null,
  target: null,
  action: CREATE,
  old: null,
  new: null,
  action_details: null,
  error: null
)
```

