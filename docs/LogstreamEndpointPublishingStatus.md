# OpenapiClient::LogstreamEndpointPublishingStatus

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **last_activity** | **String** | Timestamp of the most recent publishing activity, in RFC 3339 format. |  |
| **last_error** | **String** | The most recent error (if any). |  |
| **max_body_size** | **Integer** | The size of the largest single request body. |  |
| **num_bytes_sent** | **Integer** | Total bytes published across all requests. |  |
| **num_entries_sent** | **Integer** | The total number of entries published. |  |
| **num_spoofed_entries** | **Integer** | The number of spoofed entries published. A spoofed entry is one that failed to validate because we did not see receive a matching flow log from the other side of the connection. |  |
| **num_total_requests** | **Integer** | The total number of requests made to the streaming endpoint. |  |
| **num_failed_requests** | **Integer** | The total number of requests to the streaming endpoint that have failed. |  |
| **rate_bytes_sent** | **Float** | The exponentially weighted moving average rate at which data is being streamed to the endpoint, in bytes per second. |  |
| **rate_entries_sent** | **Float** | The exponentially weighted moving average rate at which entries are being sent to the endpoint, in entries per second. |  |
| **rate_total_requests** | **Float** | The exponentially weighted moving average rate at which requests are being made to the endpoint, in requests per second. |  |
| **rate_failed_requests** | **Float** | The exponentially weighted moving average rate at which requests are failing, in requests per second. |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::LogstreamEndpointPublishingStatus.new(
  last_activity: 2024-06-10T15:42:13.984555636Z,
  last_error: Something went wrong.,
  max_body_size: 524288,
  num_bytes_sent: 17238983,
  num_entries_sent: 8363,
  num_spoofed_entries: 0,
  num_total_requests: 10610,
  num_failed_requests: 5434,
  rate_bytes_sent: 3.524073767296142,
  rate_entries_sent: 0.008564949767446907,
  rate_total_requests: 0.0037038341100629453,
  rate_failed_requests: 4.1431119220540763E-157
)
```

