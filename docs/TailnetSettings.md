# OpenapiClient::TailnetSettings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **devices_approval_on** | **Boolean** | Whether [device approval](/kb/1099/device-approval) is enabled for the tailnet.  | [optional] |
| **devices_auto_updates_on** | **Boolean** | Whether [auto updates](/kb/1067/update#auto-updates) are enabled for devices that belong to this tailnet.  | [optional] |
| **devices_key_duration_days** | **Integer** | The [key expiry](/kb/1028/key-expiry) duration for devices on this tailnet.  | [optional] |
| **users_approval_on** | **Boolean** | Whether [user approval](/kb/1239/user-approval) is enabled for this tailnet.  | [optional] |
| **users_role_allowed_to_join_external_tailnets** | **String** | Which user roles are allowed to [join external tailnets](/kb/1271/invite-any-user).  | [optional] |
| **network_flow_logging_on** | **Boolean** | Whether [network flog logs](/kb/1219/network-flow-logs) are enabled for the tailnet.  | [optional] |
| **regional_routing_on** | **Boolean** | Whether [regional routing](/kb/1115/high-availability#regional-routing) is enabled for the tailnet.  | [optional] |
| **posture_identity_collection_on** | **Boolean** | Whether [identity collection](/kb/1326/device-identity) is enabled for [device posture](/kb/1288/device-posture) integrations for the tailnet.  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::TailnetSettings.new(
  devices_approval_on: false,
  devices_auto_updates_on: false,
  devices_key_duration_days: 180,
  users_approval_on: true,
  users_role_allowed_to_join_external_tailnets: admin,
  network_flow_logging_on: false,
  regional_routing_on: false,
  posture_identity_collection_on: false
)
```

