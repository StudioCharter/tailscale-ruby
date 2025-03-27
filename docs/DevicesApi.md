# OpenapiClient::DevicesApi

All URIs are relative to *https://api.tailscale.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**authorize_device**](DevicesApi.md#authorize_device) | **POST** /device/{deviceId}/authorized | Authorize device |
| [**delete_custom_device_posture_attributes**](DevicesApi.md#delete_custom_device_posture_attributes) | **DELETE** /device/{deviceId}/attributes/{attributeKey} | Delete custom device posture attributes |
| [**delete_device**](DevicesApi.md#delete_device) | **DELETE** /device/{deviceId} | Delete a device |
| [**expire_device_key**](DevicesApi.md#expire_device_key) | **POST** /device/{deviceId}/expire | Expire a device&#39;s key |
| [**get_device**](DevicesApi.md#get_device) | **GET** /device/{deviceId} | Get a device |
| [**get_device_posture_attributes**](DevicesApi.md#get_device_posture_attributes) | **GET** /device/{deviceId}/attributes | Get device posture attributes |
| [**list_device_routes**](DevicesApi.md#list_device_routes) | **GET** /device/{deviceId}/routes | List device routes |
| [**list_tailnet_devices**](DevicesApi.md#list_tailnet_devices) | **GET** /tailnet/{tailnet}/devices | List tailnet devices |
| [**set_custom_device_posture_attributes**](DevicesApi.md#set_custom_device_posture_attributes) | **POST** /device/{deviceId}/attributes/{attributeKey} | Set custom device posture attributes |
| [**set_device_ip**](DevicesApi.md#set_device_ip) | **POST** /device/{deviceId}/ip | Set device IPv4 address |
| [**set_device_name**](DevicesApi.md#set_device_name) | **POST** /device/{deviceId}/name | Set device name |
| [**set_device_routes**](DevicesApi.md#set_device_routes) | **POST** /device/{deviceId}/routes | Set device routes |
| [**set_device_tags**](DevicesApi.md#set_device_tags) | **POST** /device/{deviceId}/tags | Set device tags |
| [**update_device_key**](DevicesApi.md#update_device_key) | **POST** /device/{deviceId}/key | Update device key |


## authorize_device

> authorize_device(device_id, opts)

Authorize device

This call marks a device as authorized or revokes its authorization for tailnets where device authorization is required, according to the authorized field in the payload.  OAuth Scope: `devices:core`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 
opts = {
  authorize_device_request: OpenapiClient::AuthorizeDeviceRequest.new({authorized: false}) # AuthorizeDeviceRequest | 
}

begin
  # Authorize device
  api_instance.authorize_device(device_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->authorize_device: #{e}"
end
```

#### Using the authorize_device_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> authorize_device_with_http_info(device_id, opts)

```ruby
begin
  # Authorize device
  data, status_code, headers = api_instance.authorize_device_with_http_info(device_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->authorize_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |
| **authorize_device_request** | [**AuthorizeDeviceRequest**](AuthorizeDeviceRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_custom_device_posture_attributes

> delete_custom_device_posture_attributes(device_id, attribute_key)

Delete custom device posture attributes

Delete a posture attribute from the specified device. This is only applicable to user-managed posture attributes in the custom namespace, which is indicated by prefixing the attribute key with `custom:`.  OAuth Scope: `devices:posture_attributes`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 
attribute_key = 'attribute_key_example' # String | The name of the posture attribute to set. This must be prefixed with `custom`:  Keys have a maximum length of 50 characters including the namespace, and can only contain letters, numbers, underscores, and colon.  Keys are case-sensitive. Keys must be unique, but are checked for uniqueness in a case-insensitive manner. For example, `custom:MyAttribute` and `custom:myattribute` cannot both be set within a single tailnet.  All values for a given key need to be of the same type, which is determined when the first value is written for a given key. For example, `custom:myattribute` cannot have a numeric value (`87`) for one node and a string value (`\"78\"`) for another node within the same tailnet. 

begin
  # Delete custom device posture attributes
  api_instance.delete_custom_device_posture_attributes(device_id, attribute_key)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->delete_custom_device_posture_attributes: #{e}"
end
```

#### Using the delete_custom_device_posture_attributes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_custom_device_posture_attributes_with_http_info(device_id, attribute_key)

```ruby
begin
  # Delete custom device posture attributes
  data, status_code, headers = api_instance.delete_custom_device_posture_attributes_with_http_info(device_id, attribute_key)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->delete_custom_device_posture_attributes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |
| **attribute_key** | **String** | The name of the posture attribute to set. This must be prefixed with &#x60;custom&#x60;:  Keys have a maximum length of 50 characters including the namespace, and can only contain letters, numbers, underscores, and colon.  Keys are case-sensitive. Keys must be unique, but are checked for uniqueness in a case-insensitive manner. For example, &#x60;custom:MyAttribute&#x60; and &#x60;custom:myattribute&#x60; cannot both be set within a single tailnet.  All values for a given key need to be of the same type, which is determined when the first value is written for a given key. For example, &#x60;custom:myattribute&#x60; cannot have a numeric value (&#x60;87&#x60;) for one node and a string value (&#x60;\&quot;78\&quot;&#x60;) for another node within the same tailnet.  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_device

> delete_device(device_id, opts)

Delete a device

Deletes the device from its tailnet. The device must belong to the requesting user's tailnet. Deleting devices shared with the tailnet is not supported.  OAuth Scope: `devices:core`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 
opts = {
  fields: 'all' # String | Optionally controls whether the response returns **all** fields or only a predefined subset of fields. Currently, there are two supported options:  - **`all`:** return all fields in the response - **`default`:** return the following fields   - `addresses`   - `id`   - `nodeId`   - `user`   - `name`   - `hostname`   - `clientVersion`   - `updateAvailable`   - `os`   - `created`   - `lastSeen`   - `keyExpiryDisabled`   - `expires`   - `authorized`   - `isExternal`   - `machineKey`   - `nodeKey`   - `blocksIncomingConnections`   - `tailnetLockKey`   - `tailnetLockError`   - `tags`  If the `fields` parameter is not supplied, then the default (limited fields) option is used. 
}

begin
  # Delete a device
  api_instance.delete_device(device_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->delete_device: #{e}"
end
```

#### Using the delete_device_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_device_with_http_info(device_id, opts)

```ruby
begin
  # Delete a device
  data, status_code, headers = api_instance.delete_device_with_http_info(device_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->delete_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |
| **fields** | **String** | Optionally controls whether the response returns **all** fields or only a predefined subset of fields. Currently, there are two supported options:  - **&#x60;all&#x60;:** return all fields in the response - **&#x60;default&#x60;:** return the following fields   - &#x60;addresses&#x60;   - &#x60;id&#x60;   - &#x60;nodeId&#x60;   - &#x60;user&#x60;   - &#x60;name&#x60;   - &#x60;hostname&#x60;   - &#x60;clientVersion&#x60;   - &#x60;updateAvailable&#x60;   - &#x60;os&#x60;   - &#x60;created&#x60;   - &#x60;lastSeen&#x60;   - &#x60;keyExpiryDisabled&#x60;   - &#x60;expires&#x60;   - &#x60;authorized&#x60;   - &#x60;isExternal&#x60;   - &#x60;machineKey&#x60;   - &#x60;nodeKey&#x60;   - &#x60;blocksIncomingConnections&#x60;   - &#x60;tailnetLockKey&#x60;   - &#x60;tailnetLockError&#x60;   - &#x60;tags&#x60;  If the &#x60;fields&#x60; parameter is not supplied, then the default (limited fields) option is used.  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## expire_device_key

> expire_device_key(device_id)

Expire a device's key

Mark a device's node key as expired. This will require the device to re-authenticate in order to connect to the tailnet. The device must belong to the requesting user's tailnet.  OAuth Scope: `devices:core`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 

begin
  # Expire a device's key
  api_instance.expire_device_key(device_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->expire_device_key: #{e}"
end
```

#### Using the expire_device_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> expire_device_key_with_http_info(device_id)

```ruby
begin
  # Expire a device's key
  data, status_code, headers = api_instance.expire_device_key_with_http_info(device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->expire_device_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_device

> <Device> get_device(device_id, opts)

Get a device

Retrieve the details for the specified device.  OAuth Scope: `devices:core:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 
opts = {
  fields: 'all' # String | Optionally controls whether the response returns **all** fields or only a predefined subset of fields. Currently, there are two supported options:  - **`all`:** return all fields in the response - **`default`:** return the following fields   - `addresses`   - `id`   - `nodeId`   - `user`   - `name`   - `hostname`   - `clientVersion`   - `updateAvailable`   - `os`   - `created`   - `lastSeen`   - `keyExpiryDisabled`   - `expires`   - `authorized`   - `isExternal`   - `machineKey`   - `nodeKey`   - `blocksIncomingConnections`   - `tailnetLockKey`   - `tailnetLockError`   - `tags`  If the `fields` parameter is not supplied, then the default (limited fields) option is used. 
}

begin
  # Get a device
  result = api_instance.get_device(device_id, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->get_device: #{e}"
end
```

#### Using the get_device_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Device>, Integer, Hash)> get_device_with_http_info(device_id, opts)

```ruby
begin
  # Get a device
  data, status_code, headers = api_instance.get_device_with_http_info(device_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Device>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->get_device_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |
| **fields** | **String** | Optionally controls whether the response returns **all** fields or only a predefined subset of fields. Currently, there are two supported options:  - **&#x60;all&#x60;:** return all fields in the response - **&#x60;default&#x60;:** return the following fields   - &#x60;addresses&#x60;   - &#x60;id&#x60;   - &#x60;nodeId&#x60;   - &#x60;user&#x60;   - &#x60;name&#x60;   - &#x60;hostname&#x60;   - &#x60;clientVersion&#x60;   - &#x60;updateAvailable&#x60;   - &#x60;os&#x60;   - &#x60;created&#x60;   - &#x60;lastSeen&#x60;   - &#x60;keyExpiryDisabled&#x60;   - &#x60;expires&#x60;   - &#x60;authorized&#x60;   - &#x60;isExternal&#x60;   - &#x60;machineKey&#x60;   - &#x60;nodeKey&#x60;   - &#x60;blocksIncomingConnections&#x60;   - &#x60;tailnetLockKey&#x60;   - &#x60;tailnetLockError&#x60;   - &#x60;tags&#x60;  If the &#x60;fields&#x60; parameter is not supplied, then the default (limited fields) option is used.  | [optional] |

### Return type

[**Device**](Device.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_device_posture_attributes

> <DevicePostureAttributes> get_device_posture_attributes(device_id)

Get device posture attributes

Retrieve all posture attributes for the specified device. This returns a JSON object of all the key-value pairs of posture attributes for the device.  OAuth Scope: `devices:posture_attributes:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 

begin
  # Get device posture attributes
  result = api_instance.get_device_posture_attributes(device_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->get_device_posture_attributes: #{e}"
end
```

#### Using the get_device_posture_attributes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DevicePostureAttributes>, Integer, Hash)> get_device_posture_attributes_with_http_info(device_id)

```ruby
begin
  # Get device posture attributes
  data, status_code, headers = api_instance.get_device_posture_attributes_with_http_info(device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DevicePostureAttributes>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->get_device_posture_attributes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |

### Return type

[**DevicePostureAttributes**](DevicePostureAttributes.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_device_routes

> <DeviceRoutes> list_device_routes(device_id)

List device routes

Retrieve the list of subnet routes that a device is advertising, as well as those that are enabled for it.  Routes must be both advertised and enabled for a device to act as a subnet router or exit node. If a device has advertised routes, they are not exposed to traffic until they are enabled. Conversely, if routes are enabled before they are advertised, they are not available for routing until the device in question has advertised them.  Learn more about [subnet routers](/kb/1019/subnets) and [exit nodes](/kb/1103/exit-nodes).  OAuth Scope: `devices:routes:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 

begin
  # List device routes
  result = api_instance.list_device_routes(device_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->list_device_routes: #{e}"
end
```

#### Using the list_device_routes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceRoutes>, Integer, Hash)> list_device_routes_with_http_info(device_id)

```ruby
begin
  # List device routes
  data, status_code, headers = api_instance.list_device_routes_with_http_info(device_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceRoutes>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->list_device_routes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |

### Return type

[**DeviceRoutes**](DeviceRoutes.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_tailnet_devices

> <ListTailnetDevices200Response> list_tailnet_devices(tailnet, opts)

List tailnet devices

Lists the devices in a tailnet.  OAuth Scope: `devices:core:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicesApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  fields: 'all' # String | Optionally controls whether the response returns **all** fields or only a predefined subset of fields. Currently, there are two supported options:  - **`all`:** return all fields in the response - **`default`:** return the following fields   - `addresses`   - `id`   - `nodeId`   - `user`   - `name`   - `hostname`   - `clientVersion`   - `updateAvailable`   - `os`   - `created`   - `lastSeen`   - `keyExpiryDisabled`   - `expires`   - `authorized`   - `isExternal`   - `machineKey`   - `nodeKey`   - `blocksIncomingConnections`   - `tailnetLockKey`   - `tailnetLockError`   - `tags`  If the `fields` parameter is not supplied, then the default (limited fields) option is used. 
}

begin
  # List tailnet devices
  result = api_instance.list_tailnet_devices(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->list_tailnet_devices: #{e}"
end
```

#### Using the list_tailnet_devices_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListTailnetDevices200Response>, Integer, Hash)> list_tailnet_devices_with_http_info(tailnet, opts)

```ruby
begin
  # List tailnet devices
  data, status_code, headers = api_instance.list_tailnet_devices_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListTailnetDevices200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->list_tailnet_devices_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **fields** | **String** | Optionally controls whether the response returns **all** fields or only a predefined subset of fields. Currently, there are two supported options:  - **&#x60;all&#x60;:** return all fields in the response - **&#x60;default&#x60;:** return the following fields   - &#x60;addresses&#x60;   - &#x60;id&#x60;   - &#x60;nodeId&#x60;   - &#x60;user&#x60;   - &#x60;name&#x60;   - &#x60;hostname&#x60;   - &#x60;clientVersion&#x60;   - &#x60;updateAvailable&#x60;   - &#x60;os&#x60;   - &#x60;created&#x60;   - &#x60;lastSeen&#x60;   - &#x60;keyExpiryDisabled&#x60;   - &#x60;expires&#x60;   - &#x60;authorized&#x60;   - &#x60;isExternal&#x60;   - &#x60;machineKey&#x60;   - &#x60;nodeKey&#x60;   - &#x60;blocksIncomingConnections&#x60;   - &#x60;tailnetLockKey&#x60;   - &#x60;tailnetLockError&#x60;   - &#x60;tags&#x60;  If the &#x60;fields&#x60; parameter is not supplied, then the default (limited fields) option is used.  | [optional] |

### Return type

[**ListTailnetDevices200Response**](ListTailnetDevices200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_custom_device_posture_attributes

> <DevicePostureAttributes> set_custom_device_posture_attributes(device_id, attribute_key, set_custom_device_posture_attributes_request)

Set custom device posture attributes

Create or update a custom posture attribute on the specified device. User-managed attributes must be in the custom namespace, which is indicated by prefixing the attribute key with `custom:`.  Custom device posture attributes are available for the Personal and Enterprise plans.  OAuth Scope: `devices:posture_attributes`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 
attribute_key = 'attribute_key_example' # String | The name of the posture attribute to set. This must be prefixed with `custom`:  Keys have a maximum length of 50 characters including the namespace, and can only contain letters, numbers, underscores, and colon.  Keys are case-sensitive. Keys must be unique, but are checked for uniqueness in a case-insensitive manner. For example, `custom:MyAttribute` and `custom:myattribute` cannot both be set within a single tailnet.  All values for a given key need to be of the same type, which is determined when the first value is written for a given key. For example, `custom:myattribute` cannot have a numeric value (`87`) for one node and a string value (`\"78\"`) for another node within the same tailnet. 
set_custom_device_posture_attributes_request = OpenapiClient::SetCustomDevicePostureAttributesRequest.new # SetCustomDevicePostureAttributesRequest | 

begin
  # Set custom device posture attributes
  result = api_instance.set_custom_device_posture_attributes(device_id, attribute_key, set_custom_device_posture_attributes_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->set_custom_device_posture_attributes: #{e}"
end
```

#### Using the set_custom_device_posture_attributes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DevicePostureAttributes>, Integer, Hash)> set_custom_device_posture_attributes_with_http_info(device_id, attribute_key, set_custom_device_posture_attributes_request)

```ruby
begin
  # Set custom device posture attributes
  data, status_code, headers = api_instance.set_custom_device_posture_attributes_with_http_info(device_id, attribute_key, set_custom_device_posture_attributes_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DevicePostureAttributes>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->set_custom_device_posture_attributes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |
| **attribute_key** | **String** | The name of the posture attribute to set. This must be prefixed with &#x60;custom&#x60;:  Keys have a maximum length of 50 characters including the namespace, and can only contain letters, numbers, underscores, and colon.  Keys are case-sensitive. Keys must be unique, but are checked for uniqueness in a case-insensitive manner. For example, &#x60;custom:MyAttribute&#x60; and &#x60;custom:myattribute&#x60; cannot both be set within a single tailnet.  All values for a given key need to be of the same type, which is determined when the first value is written for a given key. For example, &#x60;custom:myattribute&#x60; cannot have a numeric value (&#x60;87&#x60;) for one node and a string value (&#x60;\&quot;78\&quot;&#x60;) for another node within the same tailnet.  |  |
| **set_custom_device_posture_attributes_request** | [**SetCustomDevicePostureAttributesRequest**](SetCustomDevicePostureAttributesRequest.md) |  |  |

### Return type

[**DevicePostureAttributes**](DevicePostureAttributes.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_device_ip

> set_device_ip(device_id, opts)

Set device IPv4 address

When a device is added to a tailnet, its Tailscale IPv4 address is set at random either from the CGNAT range, or a subset of the CGNAT range specified by an [ip pool](https://tailscale.com/kb/1304/ip-pool). This endpoint can be used to replace the existing IPv4 address with a specific value.  This action will break any existing connections to this machine. You will need to reconnect to this machine using the new IP address. You may also need to flush your DNS cache.  OAuth Scope: `devices:core`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 
opts = {
  set_device_ip_request: OpenapiClient::SetDeviceIpRequest.new({ipv4: '100.80.0.1'}) # SetDeviceIpRequest | 
}

begin
  # Set device IPv4 address
  api_instance.set_device_ip(device_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->set_device_ip: #{e}"
end
```

#### Using the set_device_ip_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_device_ip_with_http_info(device_id, opts)

```ruby
begin
  # Set device IPv4 address
  data, status_code, headers = api_instance.set_device_ip_with_http_info(device_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->set_device_ip_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |
| **set_device_ip_request** | [**SetDeviceIpRequest**](SetDeviceIpRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_device_name

> set_device_name(device_id, opts)

Set device name

When a device is added to a tailnet, its Tailscale [device name](https://tailscale.com/kb/1098/machine-names) (also sometimes referred to as machine name) is generated from its OS hostname. The device name is the canonical name for the device on your tailnet.  Device name changes immediately get propogated through your tailnet, so be aware that any existing [Magic DNS](https://tailscale.com/kb/1081/magicdns) URLs using the old name will no longer work.  OAuth Scope: `devices:core`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 
opts = {
  set_device_name_request: OpenapiClient::SetDeviceNameRequest.new({name: 'dev-server'}) # SetDeviceNameRequest | 
}

begin
  # Set device name
  api_instance.set_device_name(device_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->set_device_name: #{e}"
end
```

#### Using the set_device_name_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_device_name_with_http_info(device_id, opts)

```ruby
begin
  # Set device name
  data, status_code, headers = api_instance.set_device_name_with_http_info(device_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->set_device_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |
| **set_device_name_request** | [**SetDeviceNameRequest**](SetDeviceNameRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_device_routes

> <DeviceRoutes> set_device_routes(device_id, set_device_routes_request)

Set device routes

Set a device's enabled subnet routes by replacing the existing list of subnet routes with the supplied parameters. [Advertised routes](/kb/1019/subnets#advertise-subnet-routes) cannot be set through the API, since they must be set directly on the device.  Routes must be both advertised and enabled for a device to act as a subnet router or exit node. If a device has advertised routes, they are not exposed to traffic until they are enabled. Conversely, if routes are enabled before they are advertised, they are not available for routing until the device in question has advertised them.  Learn more about [subnet routers](/kb/1019/subnets) and [exit nodes](/kb/1103/exit-nodes).  OAuth Scope: `devices:routes`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 
set_device_routes_request = OpenapiClient::SetDeviceRoutesRequest.new # SetDeviceRoutesRequest | 

begin
  # Set device routes
  result = api_instance.set_device_routes(device_id, set_device_routes_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->set_device_routes: #{e}"
end
```

#### Using the set_device_routes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DeviceRoutes>, Integer, Hash)> set_device_routes_with_http_info(device_id, set_device_routes_request)

```ruby
begin
  # Set device routes
  data, status_code, headers = api_instance.set_device_routes_with_http_info(device_id, set_device_routes_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DeviceRoutes>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->set_device_routes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |
| **set_device_routes_request** | [**SetDeviceRoutesRequest**](SetDeviceRoutesRequest.md) |  |  |

### Return type

[**DeviceRoutes**](DeviceRoutes.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_device_tags

> set_device_tags(device_id, opts)

Set device tags

Tags let you assign an identity to a device that is separate from human users, and use that identity as part of an ACL to restrict access. Tags are similar to role accounts, but more flexible.  Tags are created in the tailnet policy file by defining the tag and an owner of the tag. Once a device is tagged, the tag is the owner of that device. A single node can have multiple tags assigned.  Consult the policy file for your tailnet in the [admin console](https://login.tailscale.com/admin/acls) for the list of tags that have been created for your tailnet. Learn more about [tags](https://tailscale.com/kb/1068/).  OAuth Scope: `devices:core`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 
opts = {
  set_device_tags_request: OpenapiClient::SetDeviceTagsRequest.new # SetDeviceTagsRequest | 
}

begin
  # Set device tags
  api_instance.set_device_tags(device_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->set_device_tags: #{e}"
end
```

#### Using the set_device_tags_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> set_device_tags_with_http_info(device_id, opts)

```ruby
begin
  # Set device tags
  data, status_code, headers = api_instance.set_device_tags_with_http_info(device_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->set_device_tags_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |
| **set_device_tags_request** | [**SetDeviceTagsRequest**](SetDeviceTagsRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_device_key

> update_device_key(device_id, opts)

Update device key

When a device is added to a tailnet, its key expiry is set according to the tailnet's key expiry setting. If the key is not refreshed and expires, the device can no longer communicate with other devices in the tailnet.  OAuth Scope: `devices:core`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DevicesApi.new
device_id = 'device_id_example' # String | ID of the device. Using the device's `nodeId` is preferred, but its numeric `id` value can also be used. 
opts = {
  update_device_key_request: OpenapiClient::UpdateDeviceKeyRequest.new({key_expiry_disabled: true}) # UpdateDeviceKeyRequest | 
}

begin
  # Update device key
  api_instance.update_device_key(device_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->update_device_key: #{e}"
end
```

#### Using the update_device_key_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_device_key_with_http_info(device_id, opts)

```ruby
begin
  # Update device key
  data, status_code, headers = api_instance.update_device_key_with_http_info(device_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling DevicesApi->update_device_key_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **device_id** | **String** | ID of the device. Using the device&#39;s &#x60;nodeId&#x60; is preferred, but its numeric &#x60;id&#x60; value can also be used.  |  |
| **update_device_key_request** | [**UpdateDeviceKeyRequest**](UpdateDeviceKeyRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

