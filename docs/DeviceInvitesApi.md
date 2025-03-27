# OpenapiClient::DeviceInvitesApi

All URIs are relative to *https://api.tailscale.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**accept_device_invite**](DeviceInvitesApi.md#accept_device_invite) | **POST** /device-invites/-/accept | Accept a device invite |
| [**create_device_invites**](DeviceInvitesApi.md#create_device_invites) | **POST** /device/{deviceId}/device-invites | Create device invites |
| [**delete_device_invite**](DeviceInvitesApi.md#delete_device_invite) | **DELETE** /device-invites/{deviceInviteId} | Delete a device invite |
| [**get_device_invite**](DeviceInvitesApi.md#get_device_invite) | **GET** /device-invites/{deviceInviteId} | Get a device invite |
| [**list_device_invites**](DeviceInvitesApi.md#list_device_invites) | **GET** /device/{deviceId}/device-invites | List device invites |
| [**resend_device_invite**](DeviceInvitesApi.md#resend_device_invite) | **POST** /device-invites/{deviceInviteId}/resend | Resend a device invite |


## accept_device_invite

> <AcceptDeviceInvite200Response> accept_device_invite(opts)

Accept a device invite

Accepts the invitation to share a device into the requesting user's tailnet.  Note that device invites cannot be accepted using an API access token generated from an OAuth client as the shared device is scoped to a user. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DeviceInvitesApi.new
opts = {
  accept_device_invite_request: OpenapiClient::AcceptDeviceInviteRequest.new({invite: 'https://login.tailscale.com/admin/invite/xxxxxx'}) # AcceptDeviceInviteRequest | 
}

begin
  # Accept a device invite
  result = api_instance.accept_device_invite(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceInvitesApi->accept_device_invite: #{e}"
end
```

#### Using the accept_device_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AcceptDeviceInvite200Response>, Integer, Hash)> accept_device_invite_with_http_info(opts)

```ruby
begin
  # Accept a device invite
  data, status_code, headers = api_instance.accept_device_invite_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AcceptDeviceInvite200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceInvitesApi->accept_device_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **accept_device_invite_request** | [**AcceptDeviceInviteRequest**](AcceptDeviceInviteRequest.md) |  | [optional] |

### Return type

[**AcceptDeviceInvite200Response**](AcceptDeviceInvite200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_device_invites

> <Array<DeviceInvite>> create_device_invites(device_id, opts)

Create device invites

Create new share invites for a device.  Note that device invites cannot be created using an API access token generated from an OAuth client as the shared device is scoped to a user. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DeviceInvitesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 
opts = {
  create_device_invites_request_inner: [OpenapiClient::CreateDeviceInvitesRequestInner.new] # Array<CreateDeviceInvitesRequestInner> | Device invites to create.
}

begin
  # Create device invites
  result = api_instance.create_device_invites(device_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceInvitesApi->create_device_invites: #{e}"
end
```

#### Using the create_device_invites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DeviceInvite>>, Integer, Hash)> create_device_invites_with_http_info(device_id, opts)

```ruby
begin
  # Create device invites
  data, status_code, headers = api_instance.create_device_invites_with_http_info(device_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DeviceInvite>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceInvitesApi->create_device_invites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |
| **create_device_invites_request_inner** | [**Array&lt;CreateDeviceInvitesRequestInner&gt;**](CreateDeviceInvitesRequestInner.md) | Device invites to create. | [optional] |

### Return type

[**Array&lt;DeviceInvite&gt;**](DeviceInvite.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_device_invite

> delete_device_invite(device_invite_id)

Delete a device invite

Delete a specific device invite.  OAuth Scope: `device_invites`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DeviceInvitesApi.new
device_invite_id = 'device_invite_id_example' # String | ID of the device invite.

begin
  # Delete a device invite
  api_instance.delete_device_invite(device_invite_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceInvitesApi->delete_device_invite: #{e}"
end
```

#### Using the delete_device_invite_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_device_invite_with_http_info(device_invite_id)

```ruby
begin
  # Delete a device invite
  data, status_code, headers = api_instance.delete_device_invite_with_http_info(device_invite_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceInvitesApi->delete_device_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_invite_id** | **String** | ID of the device invite. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_device_invite

> <DeviceInvite> get_device_invite(device_invite_id)

Get a device invite

Retrieve a specific device invite.  OAuth Scope: `device_invites:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DeviceInvitesApi.new
device_invite_id = 'device_invite_id_example' # String | ID of the device invite.

begin
  # Get a device invite
  result = api_instance.get_device_invite(device_invite_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceInvitesApi->get_device_invite: #{e}"
end
```

#### Using the get_device_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceInvite>, Integer, Hash)> get_device_invite_with_http_info(device_invite_id)

```ruby
begin
  # Get a device invite
  data, status_code, headers = api_instance.get_device_invite_with_http_info(device_invite_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceInvite>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceInvitesApi->get_device_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_invite_id** | **String** | ID of the device invite. |  |

### Return type

[**DeviceInvite**](DeviceInvite.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_device_invites

> <Array<DeviceInvite>> list_device_invites(device_id)

List device invites

List all share invites for a device.  OAuth Scope: `device_invites:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DeviceInvitesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 

begin
  # List device invites
  result = api_instance.list_device_invites(device_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceInvitesApi->list_device_invites: #{e}"
end
```

#### Using the list_device_invites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<DeviceInvite>>, Integer, Hash)> list_device_invites_with_http_info(device_id)

```ruby
begin
  # List device invites
  data, status_code, headers = api_instance.list_device_invites_with_http_info(device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<DeviceInvite>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceInvitesApi->list_device_invites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |

### Return type

[**Array&lt;DeviceInvite&gt;**](DeviceInvite.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resend_device_invite

> resend_device_invite(device_invite_id)

Resend a device invite

Resend a device invite by email. You can only use this if the specified invite was originally created with an email specified. Refer to [creating device invites for a device](#tag/deviceinvites/post/device/{deviceId}/device-invites).  Note: Invite resends are rate limited to one per minute.  Note that device invites cannot be resent using an API access token generated from an OAuth client as the shared device is scoped to a user. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DeviceInvitesApi.new
device_invite_id = 'device_invite_id_example' # String | ID of the device invite.

begin
  # Resend a device invite
  api_instance.resend_device_invite(device_invite_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceInvitesApi->resend_device_invite: #{e}"
end
```

#### Using the resend_device_invite_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resend_device_invite_with_http_info(device_invite_id)

```ruby
begin
  # Resend a device invite
  data, status_code, headers = api_instance.resend_device_invite_with_http_info(device_invite_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DeviceInvitesApi->resend_device_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_invite_id** | **String** | ID of the device invite. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

