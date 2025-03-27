# OpenapiClient::LogstreamEndpointConfiguration

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **log_type** | [**LogType**](LogType.md) | The type of log that is streamed to this endpoint. | [optional][readonly] |
| **destination_type** | **String** | The type of system to which logs are being streamed. | [optional] |
| **url** | **String** | The URL to which log streams are being posted. If the DestinationType is &#x60;s3&#x60;, the URL may be (and often is) empty to use the official Amazon S3 endpoint. | [optional] |
| **user** | **String** | The username with which log streams to this endpoint are authenticated. | [optional] |
| **upload_period_minutes** | **Integer** | An optional number of minutes to wait in between uploading new logs. If the quantity of logs does not fit within a single upload, multiple uploads will be made. | [optional] |
| **compression_format** | **String** | The compression algorithm with which to compress logs. &#x60;none&#x60; disables compression. Defaults to &#x60;none&#x60;. | [optional] |
| **token** | **String** | The token/password with which log streams to this endpoint should be authenticated. | [optional] |
| **s3_bucket** | **String** | The S3 bucket name. Required if the destinationType is &#x60;s3&#x60;. | [optional] |
| **s3_region** | **String** | The region in which the S3 bucket is located. Required if the destinationType is &#x60;s3&#x60;. | [optional] |
| **s3_key_prefix** | **String** | An optional S3 key prefix to prepend to the auto-generated S3 key name. | [optional] |
| **s3_authentication_type** | **String** | What type of authentication to use for S3. Required if the destinationType is &#x60;s3&#x60;. Tailscale recommends using &#x60;rolearn&#x60;. See [Amazon documentation](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles_common-scenarios_third-party.html). | [optional] |
| **s3_access_key_id** | **String** | The S3 access key ID. Required if the destinationType is &#x60;s3&#x60; and &#x60;authenticationType&#x60; is &#x60;accesskey&#x60;. | [optional] |
| **s3_secret_access_key** | **String** | The S3 secret access key. Required if the destinationType is &#x60;s3&#x60; and &#x60;authenticationType&#x60; is &#x60;accesskey&#x60;. | [optional] |
| **s3_role_arn** | **String** | The Role ARN that Tailscale should supply to AWS when authenticating using role-based authentication. Required if the destinationType is &#x60;s3&#x60; and &#x60;authenticationType&#x60; is &#x60;rolearn&#x60;. | [optional] |
| **s3_external_id** | **String** | The AWS external id that Tailscale supplies when authenticating using role-based authentication. Populated if the destinationType is &#x60;s3&#x60; and &#x60;authenticationType&#x60; is &#x60;rolearn&#x60;. This corresponds to the &#x60;externalId&#x60; field obtained from [tailnet/{tailnet}/aws-external-id](#tag/logging/POST/tailnet/{tailnet}/aws-external-id). | [optional][readonly] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::LogstreamEndpointConfiguration.new(
  log_type: null,
  destination_type: elastic,
  url: http://100.71.134.73:80/config-log-datastream,
  user: myusername,
  upload_period_minutes: 5,
  compression_format: zstd,
  token: mytoken,
  s3_bucket: mycompany-mybucket,
  s3_region: us-east-1,
  s3_key_prefix: null,
  s3_authentication_type: null,
  s3_access_key_id: null,
  s3_secret_access_key: null,
  s3_role_arn: null,
  s3_external_id: null
)
```

