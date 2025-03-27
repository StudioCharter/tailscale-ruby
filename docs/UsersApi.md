# OpenapiClient::UsersApi

All URIs are relative to *https://api.tailscale.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**approve_user**](UsersApi.md#approve_user) | **POST** /users/{userId}/approve | Approve a user |
| [**delete_user**](UsersApi.md#delete_user) | **POST** /users/{userId}/delete | Delete a user |
| [**get_user**](UsersApi.md#get_user) | **GET** /users/{userId} | Get a user |
| [**list_users**](UsersApi.md#list_users) | **GET** /tailnet/{tailnet}/users | List users |
| [**restore_user**](UsersApi.md#restore_user) | **POST** /users/{userId}/restore | Restore a user |
| [**suspend_user**](UsersApi.md#suspend_user) | **POST** /users/{userId}/suspend | Suspend a user |
| [**update_user_role**](UsersApi.md#update_user_role) | **POST** /users/{userId}/role | Update user role |


## approve_user

> approve_user(user_id)

Approve a user

Approve a pending user's access to the tailnet. This is a no-op if user approval has not been enabled for the tailnet, or if the user is already approved.  User approval can be managed using the [tailnet settings endpoints](#tag/tailnetsettings).  Learn more about [user approval](/kb/1239/user-approval) and [enabling user approval for your network](/kb/1239/user-approval#enable-user-approval-for-your-network).  OAuth Scope: `users`.  > ⓘ User-based access tokens cannot approve their own user. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
user_id = 'user_id_example' # String | ID of the user. 

begin
  # Approve a user
  api_instance.approve_user(user_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->approve_user: #{e}"
end
```

#### Using the approve_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> approve_user_with_http_info(user_id)

```ruby
begin
  # Approve a user
  data, status_code, headers = api_instance.approve_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->approve_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | ID of the user.  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## delete_user

> delete_user(user_id)

Delete a user

> ⓘ This endpoint is available for the [Personal and Enterprise plans](/pricing).  Delete a user from their tailnet. Learn more about [deleting users](/kb/1145/remove-team-members#deleting-users).  OAuth Scope: `users`.  > ⓘ User-based access tokens cannot delete their own user. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
user_id = 'user_id_example' # String | ID of the user. 

begin
  # Delete a user
  api_instance.delete_user(user_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user: #{e}"
end
```

#### Using the delete_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_with_http_info(user_id)

```ruby
begin
  # Delete a user
  data, status_code, headers = api_instance.delete_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->delete_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | ID of the user.  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user

> <User> get_user(user_id)

Get a user

Retrieve details about the specified user.  OAuth Scope: `users:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
user_id = 'user_id_example' # String | ID of the user. 

begin
  # Get a user
  result = api_instance.get_user(user_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user: #{e}"
end
```

#### Using the get_user_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<User>, Integer, Hash)> get_user_with_http_info(user_id)

```ruby
begin
  # Get a user
  data, status_code, headers = api_instance.get_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <User>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->get_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | ID of the user.  |  |

### Return type

[**User**](User.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_users

> <ListUsers200Response> list_users(tailnet, opts)

List users

List all users of a tailnet.  OAuth Scope: `users:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  type: 'member', # String | Allows for filtering the output by user type. 
  role: 'owner' # String | Allows for filtering the output by user role. Learn more about [user roles](kb/1138/user-roles). 
}

begin
  # List users
  result = api_instance.list_users(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->list_users: #{e}"
end
```

#### Using the list_users_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListUsers200Response>, Integer, Hash)> list_users_with_http_info(tailnet, opts)

```ruby
begin
  # List users
  data, status_code, headers = api_instance.list_users_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListUsers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->list_users_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **type** | **String** | Allows for filtering the output by user type.  | [optional][default to &#39;member&#39;] |
| **role** | **String** | Allows for filtering the output by user role. Learn more about [user roles](kb/1138/user-roles).  | [optional][default to &#39;all&#39;] |

### Return type

[**ListUsers200Response**](ListUsers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## restore_user

> restore_user(user_id)

Restore a user

> ⓘ This endpoint is available for the [Personal and Enterprise plans](/pricing).  Restores a suspended user's access to their tailnet. Learn more about [restoring users](/kb/1145/remove-team-members#restoring-users).  OAuth Scope: `users`.  > ⓘ User-based access tokens cannot restore their own user. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
user_id = 'user_id_example' # String | ID of the user. 

begin
  # Restore a user
  api_instance.restore_user(user_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->restore_user: #{e}"
end
```

#### Using the restore_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> restore_user_with_http_info(user_id)

```ruby
begin
  # Restore a user
  data, status_code, headers = api_instance.restore_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->restore_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | ID of the user.  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## suspend_user

> suspend_user(user_id)

Suspend a user

> ⓘ This endpoint is available for the [Personal and Enterprise plans](/pricing).  Suspends a user from their tailnet. Learn more about [suspending users](/kb/1145/remove-team-members#suspending-users).  OAuth Scope: `users`.  > ⓘ User-based access tokens cannot suspend their own user. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
user_id = 'user_id_example' # String | ID of the user. 

begin
  # Suspend a user
  api_instance.suspend_user(user_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->suspend_user: #{e}"
end
```

#### Using the suspend_user_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> suspend_user_with_http_info(user_id)

```ruby
begin
  # Suspend a user
  data, status_code, headers = api_instance.suspend_user_with_http_info(user_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->suspend_user_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | ID of the user.  |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## update_user_role

> update_user_role(user_id, opts)

Update user role

Update the role for the specified user.  Learn more about [user roles](kb/1138/user-roles).  OAuth Scope: `users`.  > ⓘ User-based access tokens cannot update their own user's role. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UsersApi.new
user_id = 'user_id_example' # String | ID of the user. 
opts = {
  update_user_role_request: OpenapiClient::UpdateUserRoleRequest.new # UpdateUserRoleRequest | 
}

begin
  # Update user role
  api_instance.update_user_role(user_id, opts)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user_role: #{e}"
end
```

#### Using the update_user_role_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_user_role_with_http_info(user_id, opts)

```ruby
begin
  # Update user role
  data, status_code, headers = api_instance.update_user_role_with_http_info(user_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UsersApi->update_user_role_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | ID of the user.  |  |
| **update_user_role_request** | [**UpdateUserRoleRequest**](UpdateUserRoleRequest.md) |  | [optional] |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

