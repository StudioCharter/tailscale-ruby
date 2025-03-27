# OpenapiClient::DNSApi

All URIs are relative to *https://api.tailscale.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_dns_preferences**](DNSApi.md#get_dns_preferences) | **GET** /tailnet/{tailnet}/dns/preferences | Get DNS preferences |
| [**get_split_dns**](DNSApi.md#get_split_dns) | **GET** /tailnet/{tailnet}/dns/split-dns | Get split DNS |
| [**list_dns_nameservers**](DNSApi.md#list_dns_nameservers) | **GET** /tailnet/{tailnet}/dns/nameservers | List DNS nameservers |
| [**list_dns_search_paths**](DNSApi.md#list_dns_search_paths) | **GET** /tailnet/{tailnet}/dns/searchpaths | List DNS search paths |
| [**set_dns_nameservers**](DNSApi.md#set_dns_nameservers) | **POST** /tailnet/{tailnet}/dns/nameservers | Set DNS nameservers |
| [**set_dns_preferences**](DNSApi.md#set_dns_preferences) | **POST** /tailnet/{tailnet}/dns/preferences | Set DNS preferences |
| [**set_dns_search_paths**](DNSApi.md#set_dns_search_paths) | **POST** /tailnet/{tailnet}/dns/searchpaths | Set DNS search paths |
| [**set_split_dns**](DNSApi.md#set_split_dns) | **PUT** /tailnet/{tailnet}/dns/split-dns | Set split DNS |
| [**update_split_dns**](DNSApi.md#update_split_dns) | **PATCH** /tailnet/{tailnet}/dns/split-dns | Update split DNS |


## get_dns_preferences

> <DnsPreferences> get_dns_preferences(tailnet)

Get DNS preferences

Retrieves the DNS preferences that are currently set for the given tailnet. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DNSApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 

begin
  # Get DNS preferences
  result = api_instance.get_dns_preferences(tailnet)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->get_dns_preferences: #{e}"
end
```

#### Using the get_dns_preferences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DnsPreferences>, Integer, Hash)> get_dns_preferences_with_http_info(tailnet)

```ruby
begin
  # Get DNS preferences
  data, status_code, headers = api_instance.get_dns_preferences_with_http_info(tailnet)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DnsPreferences>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->get_dns_preferences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |

### Return type

[**DnsPreferences**](DnsPreferences.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_split_dns

> Hash&lt;String, Array&lt;String&gt;&gt; get_split_dns(tailnet)

Get split DNS

Retrieves the split DNS settings, which is a map from domains to lists of nameservers, that is currently set for the given tailnet. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DNSApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 

begin
  # Get split DNS
  result = api_instance.get_split_dns(tailnet)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->get_split_dns: #{e}"
end
```

#### Using the get_split_dns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Array&lt;String&gt;&gt;, Integer, Hash)> get_split_dns_with_http_info(tailnet)

```ruby
begin
  # Get split DNS
  data, status_code, headers = api_instance.get_split_dns_with_http_info(tailnet)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Array&lt;String&gt;&gt;
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->get_split_dns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |

### Return type

**Hash&lt;String, Array&lt;String&gt;&gt;**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_dns_nameservers

> <ListDnsNameservers200Response> list_dns_nameservers(tailnet)

List DNS nameservers

Lists the global DNS nameservers for a tailnet. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DNSApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 

begin
  # List DNS nameservers
  result = api_instance.list_dns_nameservers(tailnet)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->list_dns_nameservers: #{e}"
end
```

#### Using the list_dns_nameservers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ListDnsNameservers200Response>, Integer, Hash)> list_dns_nameservers_with_http_info(tailnet)

```ruby
begin
  # List DNS nameservers
  data, status_code, headers = api_instance.list_dns_nameservers_with_http_info(tailnet)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ListDnsNameservers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->list_dns_nameservers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |

### Return type

[**ListDnsNameservers200Response**](ListDnsNameservers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_dns_search_paths

> <DnsSearchPaths> list_dns_search_paths(tailnet)

List DNS search paths

Retrieves the list of search paths, also referred to as *search domains*, that is currently set for the given tailnet. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DNSApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 

begin
  # List DNS search paths
  result = api_instance.list_dns_search_paths(tailnet)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->list_dns_search_paths: #{e}"
end
```

#### Using the list_dns_search_paths_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DnsSearchPaths>, Integer, Hash)> list_dns_search_paths_with_http_info(tailnet)

```ruby
begin
  # List DNS search paths
  data, status_code, headers = api_instance.list_dns_search_paths_with_http_info(tailnet)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DnsSearchPaths>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->list_dns_search_paths_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |

### Return type

[**DnsSearchPaths**](DnsSearchPaths.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## set_dns_nameservers

> <SetDnsNameservers200Response> set_dns_nameservers(tailnet, opts)

Set DNS nameservers

Replaces the list of global DNS nameservers for the given tailnet with the list supplied in the request.  Note that changing the list of DNS nameservers may also affect the status of MagicDNS (if MagicDNS is on; learn about [MagicDNS](https://tailscale.com/kb/1081)). If all nameservers have been removed, MagicDNS will be automatically disabled (until explicitly turned back on by the user). 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DNSApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  list_dns_nameservers200_response: OpenapiClient::ListDnsNameservers200Response.new # ListDnsNameservers200Response | 
}

begin
  # Set DNS nameservers
  result = api_instance.set_dns_nameservers(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->set_dns_nameservers: #{e}"
end
```

#### Using the set_dns_nameservers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<SetDnsNameservers200Response>, Integer, Hash)> set_dns_nameservers_with_http_info(tailnet, opts)

```ruby
begin
  # Set DNS nameservers
  data, status_code, headers = api_instance.set_dns_nameservers_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <SetDnsNameservers200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->set_dns_nameservers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **list_dns_nameservers200_response** | [**ListDnsNameservers200Response**](ListDnsNameservers200Response.md) |  | [optional] |

### Return type

[**SetDnsNameservers200Response**](SetDnsNameservers200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_dns_preferences

> <DnsPreferences> set_dns_preferences(tailnet, opts)

Set DNS preferences

Set the DNS preferences for a tailnet; specifically, the MagicDNS setting. Note that MagicDNS is dependent on DNS servers. Learn about [MagicDNS](https://tailscale.com/kb/1081).  If there is at least one DNS server, then MagicDNS can be enabled. Otherwise, it returns an error.  Note that removing all nameservers will turn off MagicDNS. To reenable it, nameservers must be added back, and MagicDNS must be explicitly turned on. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DNSApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  dns_preferences: OpenapiClient::DnsPreferences.new({magic_dns: true}) # DnsPreferences | 
}

begin
  # Set DNS preferences
  result = api_instance.set_dns_preferences(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->set_dns_preferences: #{e}"
end
```

#### Using the set_dns_preferences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DnsPreferences>, Integer, Hash)> set_dns_preferences_with_http_info(tailnet, opts)

```ruby
begin
  # Set DNS preferences
  data, status_code, headers = api_instance.set_dns_preferences_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DnsPreferences>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->set_dns_preferences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **dns_preferences** | [**DnsPreferences**](DnsPreferences.md) |  | [optional] |

### Return type

[**DnsPreferences**](DnsPreferences.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_dns_search_paths

> <DnsSearchPaths> set_dns_search_paths(tailnet, opts)

Set DNS search paths

Replaces the list of search paths for the given tailnet. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DNSApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  dns_search_paths: OpenapiClient::DnsSearchPaths.new({search_paths: [user1.example.com,  user2.example.com]}) # DnsSearchPaths | 
}

begin
  # Set DNS search paths
  result = api_instance.set_dns_search_paths(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->set_dns_search_paths: #{e}"
end
```

#### Using the set_dns_search_paths_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<DnsSearchPaths>, Integer, Hash)> set_dns_search_paths_with_http_info(tailnet, opts)

```ruby
begin
  # Set DNS search paths
  data, status_code, headers = api_instance.set_dns_search_paths_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <DnsSearchPaths>
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->set_dns_search_paths_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **dns_search_paths** | [**DnsSearchPaths**](DnsSearchPaths.md) |  | [optional] |

### Return type

[**DnsSearchPaths**](DnsSearchPaths.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## set_split_dns

> Hash&lt;String, Array&lt;String&gt;&gt; set_split_dns(tailnet, opts)

Set split DNS

Replaces the split DNS settings for a given tailnet. Setting the value of a mapping to `null` clears the nameservers for that domain. Sending an empty object clears nameservers for all domains. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DNSApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  request_body: { key: ['inner_example']} # Hash<String, Array<String>> | 
}

begin
  # Set split DNS
  result = api_instance.set_split_dns(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->set_split_dns: #{e}"
end
```

#### Using the set_split_dns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Array&lt;String&gt;&gt;, Integer, Hash)> set_split_dns_with_http_info(tailnet, opts)

```ruby
begin
  # Set split DNS
  data, status_code, headers = api_instance.set_split_dns_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Array&lt;String&gt;&gt;
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->set_split_dns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **request_body** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array.md) |  | [optional] |

### Return type

**Hash&lt;String, Array&lt;String&gt;&gt;**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_split_dns

> Hash&lt;String, Array&lt;String&gt;&gt; update_split_dns(tailnet, opts)

Update split DNS

Performs partial updates of the split DNS settings for a given tailnet. Only domains specified in the request map will be modified. Setting the value of a mapping to `null` clears the nameservers for that domain. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::DNSApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  request_body: { key: ['inner_example']} # Hash<String, Array<String>> | 
}

begin
  # Update split DNS
  result = api_instance.update_split_dns(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->update_split_dns: #{e}"
end
```

#### Using the update_split_dns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Hash&lt;String, Array&lt;String&gt;&gt;, Integer, Hash)> update_split_dns_with_http_info(tailnet, opts)

```ruby
begin
  # Update split DNS
  data, status_code, headers = api_instance.update_split_dns_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Hash&lt;String, Array&lt;String&gt;&gt;
rescue OpenapiClient::ApiError => e
  puts "Error when calling DNSApi->update_split_dns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **request_body** | [**Hash&lt;String, Array&lt;String&gt;&gt;**](Array.md) |  | [optional] |

### Return type

**Hash&lt;String, Array&lt;String&gt;&gt;**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

