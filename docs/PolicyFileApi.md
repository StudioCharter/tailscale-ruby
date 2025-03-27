# OpenapiClient::PolicyFileApi

All URIs are relative to *https://api.tailscale.com/api/v2*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_policy_file**](PolicyFileApi.md#get_policy_file) | **GET** /tailnet/{tailnet}/acl | Get policy file |
| [**preview_rule_matches**](PolicyFileApi.md#preview_rule_matches) | **POST** /tailnet/{tailnet}/acl/preview | Preview rule matches |
| [**set_policy_file**](PolicyFileApi.md#set_policy_file) | **POST** /tailnet/{tailnet}/acl | Set policy file |
| [**validate_and_test_policy_file**](PolicyFileApi.md#validate_and_test_policy_file) | **POST** /tailnet/{tailnet}/acl/validate | Validate and test policy file |


## get_policy_file

> Object get_policy_file(tailnet, opts)

Get policy file

Retrieves the current policy file for the given tailnet;  this includes the ACL along with the rules and tests that have been defined.  This method can return the policy file as JSON or HuJSON, depending on the Accept header. The response also includes an `ETag` header, which can be optionally included when [setting the policy file](#tag/policyfile/post/tailnet/{tailnet}/acl) to avoid missed updates.  Learn more about [policy file ACL syntax](https://tailscale.com/kb/1337/acl-syntax).  OAuth Scope: `policy_file:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyFileApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  details: true, # Boolean | Request a detailed description of the tailnet policy file by providing `details=true` in the URL query string. Supplying any other value for `details`, or not sending the param, is treated as sending `details=false`. If using this, do not supply an `Accept` parameter in the header.  The response will contain a JSON object with the fields: - `acl`: a base64-encoded string representation of the huJSON format. - `warnings`: array of strings for syntactically valid but nonsensical entries. - `errors`: an array of strings for parsing failures. 
  accept: 'accept_example' # String | Response is encoded as JSON if `application/json` is requested, otherwise HuJSON will be returned.
}

begin
  # Get policy file
  result = api_instance.get_policy_file(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyFileApi->get_policy_file: #{e}"
end
```

#### Using the get_policy_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> get_policy_file_with_http_info(tailnet, opts)

```ruby
begin
  # Get policy file
  data, status_code, headers = api_instance.get_policy_file_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyFileApi->get_policy_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **details** | **Boolean** | Request a detailed description of the tailnet policy file by providing &#x60;details&#x3D;true&#x60; in the URL query string. Supplying any other value for &#x60;details&#x60;, or not sending the param, is treated as sending &#x60;details&#x3D;false&#x60;. If using this, do not supply an &#x60;Accept&#x60; parameter in the header.  The response will contain a JSON object with the fields: - &#x60;acl&#x60;: a base64-encoded string representation of the huJSON format. - &#x60;warnings&#x60;: array of strings for syntactically valid but nonsensical entries. - &#x60;errors&#x60;: an array of strings for parsing failures.  | [optional] |
| **accept** | **String** | Response is encoded as JSON if &#x60;application/json&#x60; is requested, otherwise HuJSON will be returned. | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/hujson


## preview_rule_matches

> <PreviewRuleMatches200Response> preview_rule_matches(tailnet, type, preview_for, opts)

Preview rule matches

When given a user or IP port to match against, returns the tailnet policy rules that apply to that resource, without saving the policy file to the server. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyFileApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
type = 'user' # String | Specify for which type of resource (user or IP port) matching rules are to be fetched. Read about [previewing changes in the admin console](https://tailscale.com/kb/1018/#previewing-changes).  OAuth Scope: `policy_file:read`. 
preview_for = '10.0.0.1:80' # String | - If `type` is `user`, provide the email of a valid user with registered machines. - If `type` is `ipport`, provide an IP address + port: `10.0.0.1:80`.  The supplied policy file is queried with this parameter to determine which rules match. 
opts = {
  body: { ... } # Object | 
}

begin
  # Preview rule matches
  result = api_instance.preview_rule_matches(tailnet, type, preview_for, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyFileApi->preview_rule_matches: #{e}"
end
```

#### Using the preview_rule_matches_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<PreviewRuleMatches200Response>, Integer, Hash)> preview_rule_matches_with_http_info(tailnet, type, preview_for, opts)

```ruby
begin
  # Preview rule matches
  data, status_code, headers = api_instance.preview_rule_matches_with_http_info(tailnet, type, preview_for, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <PreviewRuleMatches200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyFileApi->preview_rule_matches_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **type** | **String** | Specify for which type of resource (user or IP port) matching rules are to be fetched. Read about [previewing changes in the admin console](https://tailscale.com/kb/1018/#previewing-changes).  OAuth Scope: &#x60;policy_file:read&#x60;.  |  |
| **preview_for** | **String** | - If &#x60;type&#x60; is &#x60;user&#x60;, provide the email of a valid user with registered machines. - If &#x60;type&#x60; is &#x60;ipport&#x60;, provide an IP address + port: &#x60;10.0.0.1:80&#x60;.  The supplied policy file is queried with this parameter to determine which rules match.  |  |
| **body** | **Object** |  | [optional] |

### Return type

[**PreviewRuleMatches200Response**](PreviewRuleMatches200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, application/hujson
- **Accept**: application/json


## set_policy_file

> Object set_policy_file(tailnet, opts)

Set policy file

Sets the ACL for the given tailnet. HuJSON and JSON are both accepted inputs. An `If-Match` header can be set to avoid missed updates.  On success, returns the updated ACL in JSON or HuJSON according to the `Accept` header. Otherwise, errors are returned for incorrectly defined ACLs, ACLs with failing tests on attempted updates, and mismatched `If-Match` header and `ETag`.  Learn more about [policy file ACL syntax](https://tailscale.com/kb/1337/acl-syntax).  OAuth Scope: `policy_file`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyFileApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  if_match: 'if_match_example', # String | This is a safety mechanism to avoid overwriting other users' updates to the tailnet policy file.  - Set the `If-Match` value to that of the `ETag` header returned in a `GET` request to `/api/v2/tailnet/{tailnet}/acl`.   Tailscale compares the `ETag` value in your request to that of the current tailnet file and only replaces the file if there's a match.   (A mismatch indicates that another update has been made to the file.) For example: `-H \"If-Match: \\\"e0b2816b418\\\"\"`. - Alternately, set the `If-Match` value to `ts-default` to ensure that the policy file is replaced *only if the current policy file is still the untouched default created automatically* for each tailnet.   For example: `-H \"If-Match: \\\"ts-default\\\"\"`. 
  accept: 'accept_example', # String | Response is encoded as JSON if `application/json` is requested, otherwise HuJSON will be returned.
  body: { ... } # Object | 
}

begin
  # Set policy file
  result = api_instance.set_policy_file(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyFileApi->set_policy_file: #{e}"
end
```

#### Using the set_policy_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(Object, Integer, Hash)> set_policy_file_with_http_info(tailnet, opts)

```ruby
begin
  # Set policy file
  data, status_code, headers = api_instance.set_policy_file_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => Object
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyFileApi->set_policy_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **if_match** | **String** | This is a safety mechanism to avoid overwriting other users&#39; updates to the tailnet policy file.  - Set the &#x60;If-Match&#x60; value to that of the &#x60;ETag&#x60; header returned in a &#x60;GET&#x60; request to &#x60;/api/v2/tailnet/{tailnet}/acl&#x60;.   Tailscale compares the &#x60;ETag&#x60; value in your request to that of the current tailnet file and only replaces the file if there&#39;s a match.   (A mismatch indicates that another update has been made to the file.) For example: &#x60;-H \&quot;If-Match: \\\&quot;e0b2816b418\\\&quot;\&quot;&#x60;. - Alternately, set the &#x60;If-Match&#x60; value to &#x60;ts-default&#x60; to ensure that the policy file is replaced *only if the current policy file is still the untouched default created automatically* for each tailnet.   For example: &#x60;-H \&quot;If-Match: \\\&quot;ts-default\\\&quot;\&quot;&#x60;.  | [optional] |
| **accept** | **String** | Response is encoded as JSON if &#x60;application/json&#x60; is requested, otherwise HuJSON will be returned. | [optional] |
| **body** | **Object** |  | [optional] |

### Return type

**Object**

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, application/hujson
- **Accept**: application/json, application/hujson


## validate_and_test_policy_file

> <ValidateAndTestPolicyFile200Response> validate_and_test_policy_file(tailnet, opts)

Validate and test policy file

This endpoint works in one of two modes, neither of which modifies your current tailnet policy file:  - Run ACL tests: When the request body contains ACL tests as a JSON array,   Tailscale runs ACL tests against the tailnet's current policy file.   Learn more about [ACL tests](https://tailscale.com/kb/1337/acl-syntax#tests). - Validate a new policy file: When the request body is a JSON object,   Tailscale interprets the body as a hypothetical new tailnet policy file with new ACLs,   including any new rules and tests.   It validates that the policy file is parsable and runs tests to validate the existing rules.  In either case, this method does not modify the tailnet policy file in any way.  OAuth Scope: `policy_file:read`. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearerAuth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::PolicyFileApi.new
tailnet = 'example.com' # String | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (`-`) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/-/...\"   ```  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \"tailnet name\" found in the DNS tab).    For example, if your organization name is `alice@example.com`, your API calls would start:    ```sh   curl \"https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\"   ```    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name). 
opts = {
  validate_and_test_policy_file_request: nil # ValidateAndTestPolicyFileRequest | 
}

begin
  # Validate and test policy file
  result = api_instance.validate_and_test_policy_file(tailnet, opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyFileApi->validate_and_test_policy_file: #{e}"
end
```

#### Using the validate_and_test_policy_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ValidateAndTestPolicyFile200Response>, Integer, Hash)> validate_and_test_policy_file_with_http_info(tailnet, opts)

```ruby
begin
  # Validate and test policy file
  data, status_code, headers = api_instance.validate_and_test_policy_file_with_http_info(tailnet, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ValidateAndTestPolicyFile200Response>
rescue OpenapiClient::ApiError => e
  puts "Error when calling PolicyFileApi->validate_and_test_policy_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **tailnet** | **String** | The tailnet organization name.  When specifying a tailnet in the API, you can:  - Provide a dash (&#x60;-&#x60;) to reference the default tailnet of the access token being used to make the API call.   This is the best option for most users.   Your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/-/...\&quot;   &#x60;&#x60;&#x60;  - Provide the **organization** name found on the **[General Settings](https://login.tailscale.com/admin/settings/general)**   page of the Tailscale admin console (not to be confused with the \&quot;tailnet name\&quot; found in the DNS tab).    For example, if your organization name is &#x60;alice@example.com&#x60;, your API calls would start:    &#x60;&#x60;&#x60;sh   curl \&quot;https://api.tailscale.com/api/v2/tailnet/alice@example.com/...\&quot;   &#x60;&#x60;&#x60;    Learn more about [tailnet organization names](https://tailscale.com/kb/1217/tailnet-name#organization-name).  |  |
| **validate_and_test_policy_file_request** | [**ValidateAndTestPolicyFileRequest**](ValidateAndTestPolicyFileRequest.md) |  | [optional] |

### Return type

[**ValidateAndTestPolicyFile200Response**](ValidateAndTestPolicyFile200Response.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

- **Content-Type**: application/json, application/husjon
- **Accept**: application/json

