# OpenapiClient::UserInvitesApi

All URIs are relative to *https://api.tailscale.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_user_invites**](UserInvitesApi.md#create_user_invites) | **POST** /tailnet/{tailnet}/user-invites | Create user invites |
| [**delete_user_invite**](UserInvitesApi.md#delete_user_invite) | **DELETE** /user-invites/{userInviteId} | Delete a user invite |
| [**get_user_invite**](UserInvitesApi.md#get_user_invite) | **GET** /user-invites/{userInviteId} | Get a user invite |
| [**list_user_invites**](UserInvitesApi.md#list_user_invites) | **GET** /tailnet/{tailnet}/user-invites | List user invites |
| [**resend_user_invite**](UserInvitesApi.md#resend_user_invite) | **POST** /user-invites/{userInviteId}/resend | Resend a user invite |


## create_user_invites

> <Array<UserInvite>> create_user_invites(tailnet, opts)

Create user invites

Create, and optionally email out, new user invites to join the tailnet.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UserInvitesApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  create_user_invites_request_inner: [OpenapiClient::CreateUserInvitesRequestInner.new] # Array<CreateUserInvitesRequestInner> | 
}

begin
  # Create user invites
  result = api_instance.create_user_invites(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserInvitesApi->create_user_invites: #{e}"
end
```

#### Using the create_user_invites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserInvite>>, Integer, Hash)> create_user_invites_with_http_info(tailnet, opts)

```ruby
begin
  # Create user invites
  data, status_code, headers = api_instance.create_user_invites_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserInvite>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserInvitesApi->create_user_invites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **create_user_invites_request_inner** | [**Array&lt;CreateUserInvitesRequestInner&gt;**](CreateUserInvitesRequestInner.md) |  | [optional] |

### Return type

[**Array&lt;UserInvite&gt;**](UserInvite.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_user_invite

> delete_user_invite(user_invite_id)

Delete a user invite

Deletes a specific user invite. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UserInvitesApi.new
user_invite_id = 'user_invite_id_example' # String | ID of the user invite.

begin
  # Delete a user invite
  api_instance.delete_user_invite(user_invite_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserInvitesApi->delete_user_invite: #{e}"
end
```

#### Using the delete_user_invite_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_user_invite_with_http_info(user_invite_id)

```ruby
begin
  # Delete a user invite
  data, status_code, headers = api_instance.delete_user_invite_with_http_info(user_invite_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserInvitesApi->delete_user_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_invite_id** | **String** | ID of the user invite. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_user_invite

> <UserInvite> get_user_invite(user_invite_id)

Get a user invite

Retrieve a specific user invite. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UserInvitesApi.new
user_invite_id = 'user_invite_id_example' # String | ID of the user invite.

begin
  # Get a user invite
  result = api_instance.get_user_invite(user_invite_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserInvitesApi->get_user_invite: #{e}"
end
```

#### Using the get_user_invite_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<UserInvite>, Integer, Hash)> get_user_invite_with_http_info(user_invite_id)

```ruby
begin
  # Get a user invite
  data, status_code, headers = api_instance.get_user_invite_with_http_info(user_invite_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <UserInvite>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserInvitesApi->get_user_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_invite_id** | **String** | ID of the user invite. |  |

### Return type

[**UserInvite**](UserInvite.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_user_invites

> <Array<UserInvite>> list_user_invites(tailnet)

List user invites

List all open (not yet accepted) user invites to the tailnet.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UserInvitesApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 

begin
  # List user invites
  result = api_instance.list_user_invites(tailnet)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserInvitesApi->list_user_invites: #{e}"
end
```

#### Using the list_user_invites_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Array<UserInvite>>, Integer, Hash)> list_user_invites_with_http_info(tailnet)

```ruby
begin
  # List user invites
  data, status_code, headers = api_instance.list_user_invites_with_http_info(tailnet)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Array<UserInvite>>
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserInvitesApi->list_user_invites_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |

### Return type

[**Array&lt;UserInvite&gt;**](UserInvite.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## resend_user_invite

> resend_user_invite(user_invite_id)

Resend a user invite

Resend a user invite by email. You can only use this if the specified invite was originally created with an email specified. Refer to [creating user invites for a tailnet](#tag/userinvites/post/tailnet/{tailnet}/user-invites).  Note: Invite resends are rate limited to one per minute. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::UserInvitesApi.new
user_invite_id = 'user_invite_id_example' # String | ID of the user invite.

begin
  # Resend a user invite
  api_instance.resend_user_invite(user_invite_id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserInvitesApi->resend_user_invite: #{e}"
end
```

#### Using the resend_user_invite_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> resend_user_invite_with_http_info(user_invite_id)

```ruby
begin
  # Resend a user invite
  data, status_code, headers = api_instance.resend_user_invite_with_http_info(user_invite_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling UserInvitesApi->resend_user_invite_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_invite_id** | **String** | ID of the user invite. |  |

### Return type

nil (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

