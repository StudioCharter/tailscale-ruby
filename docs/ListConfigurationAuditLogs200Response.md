# OpenapiClient::ListConfigurationAuditLogs200Response

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **String** | Version of audit logs response. | [optional] |
| **tailnet** | **String** | The tailnet on which the logged configuration changes were made. | [optional] |
| **logs** | [**Array&lt;ConfigurationAuditLog&gt;**](ConfigurationAuditLog.md) | Matching log entries, ordered chronologically. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ListConfigurationAuditLogs200Response.new(
  version: 1.1,
  tailnet: example.com,
  logs: null
)
```

