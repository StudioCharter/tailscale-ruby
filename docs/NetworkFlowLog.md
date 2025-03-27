# OpenapiClient::NetworkFlowLog

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **logged** | **String** | Timestamp of the flow log, in RFC 3339 format. | [optional] |
| **node_id** | **String** | Identifier of the node. | [optional] |
| **start** | **String** | Time at which flow started, in RFC 3339 format. | [optional] |
| **_end** | **String** | Time at which flow ended, in RFC 3339 format. | [optional] |
| **virtual_traffic** | [**Array&lt;ConnectionCounts&gt;**](ConnectionCounts.md) |  | [optional] |
| **subnet_traffic** | [**Array&lt;ConnectionCounts&gt;**](ConnectionCounts.md) |  | [optional] |
| **exit_traffic** | [**Array&lt;ConnectionCounts&gt;**](ConnectionCounts.md) |  | [optional] |
| **physical_traffic** | [**Array&lt;ConnectionCounts&gt;**](ConnectionCounts.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::NetworkFlowLog.new(
  logged: 2024-06-06T15:27:26.583893Z,
  node_id: nBLYviWLGB21KTM59,
  start: 2024-06-06T15:25:26.583893Z,
  _end: 2024-06-06T15:26:26.583893Z,
  virtual_traffic: null,
  subnet_traffic: null,
  exit_traffic: null,
  physical_traffic: null
)
```

