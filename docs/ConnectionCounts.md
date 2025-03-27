# OpenapiClient::ConnectionCounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **proto** | **String** | IP protocol name (or number if no name used). | [optional] |
| **src** | **String** | Source addr:port. | [optional] |
| **dst** | **String** | Destination addr:port. | [optional] |
| **tx_pkts** | **Integer** | Number of packets sent. | [optional] |
| **tx_bytes** | **Integer** | Number of bytes sent. | [optional] |
| **rx_pkts** | **Integer** | Number of packets received. | [optional] |
| **rx_bytes** | **Integer** | Number of bytes received. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ConnectionCounts.new(
  proto: ipv4,
  src: 108.86.185.125:52343,
  dst: 108.86.185.126:443,
  tx_pkts: 10,
  tx_bytes: 1000,
  rx_pkts: 10,
  rx_bytes: 1000
)
```

