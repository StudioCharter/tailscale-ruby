# OpenapiClient::KeyCapabilitiesDevicesCreate

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reusable** | **Boolean** | reusable for auth keys only; reusable auth keys can be used multiple times to register different devices. Learn more about reusable auth keys at https://tailscale.com/kb/1085/#types-of-auth-keys.  | [optional] |
| **ephemeral** | **Boolean** | ephemeral for auth keys only; ephemeral keys are used to connect and then clean up short-lived devices. Learn about ephemeral nodes at https://tailscale.com/kb/1111/.  | [optional] |
| **preauthorized** | **Boolean** | preauthorized for auth keys only; these are also referred to as \&quot;pre-approved\&quot; keys. &#39;true&#39; means that devices registered with this key won&#39;t require additional approval from a tailnet admin. Learn about device approval at https://tailscale.com/kb/1099/.  | [optional] |
| **tags** | **Array&lt;String&gt;** | tags are the tags that will be set on devices registered with this key. Learn about tags at https://tailscale.com/kb/1068/.  Whether tags are required or optional depends on the owner of the auth key: - When creating an auth key owned by the tailnet (using OAuth), it must have tags. The auth tags specified for that new auth key must exactly match the tags that are on the OAuth client used to create that auth key (or they must be tags that are owned by the tags that are on the OAuth client used to create the auth key). - When creating an auth key owned by a user (using a user&#39;s access token), tags are optional.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::KeyCapabilitiesDevicesCreate.new(
  reusable: true,
  ephemeral: false,
  preauthorized: true,
  tags: null
)
```

