# OpenapiClient::Device

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **addresses** | **Array&lt;String&gt;** | A list of Tailscale IP addresses for the device, including both IPv4 (formatted as 100.x.y.z) and IPv6 (formatted as fd7a:115c:a1e0:a:b:c:d:e) addresses.  | [optional] |
| **id** | **String** | The legacy identifier for a device; you can supply this value wherever {deviceId} is indicated in the endpoint. Note that although \&quot;id\&quot; is still accepted, \&quot;nodeId\&quot; is preferred.  | [optional] |
| **node_id** | **String** | The preferred identifier for a device; supply this value wherever {deviceId} is indicated in the endpoint.  | [optional] |
| **user** | **String** | The user who registered the node. For untagged nodes,  this user is the device owner.  | [optional] |
| **name** | **String** | The MagicDNS name of the device. Learn more about MagicDNS at https://tailscale.com/kb/1081/.  | [optional] |
| **hostname** | **String** | The machine name in the admin console. Learn more about machine names at https://tailscale.com/kb/1098/.  | [optional] |
| **client_version** | **String** | The version of the Tailscale client software; this is empty for external devices.  | [optional] |
| **update_available** | **Boolean** | &#39;true&#39; if a Tailscale client version upgrade is available. This value is empty for external devices.  | [optional] |
| **os** | **String** | The operating system that the device is running.  | [optional] |
| **created** | **Time** | The date on which the device was added to the tailnet; this is empty for external devices.  | [optional] |
| **last_seen** | **Time** | When device was last active on the tailnet.  | [optional] |
| **key_expiry_disabled** | **Boolean** | &#39;true&#39; if the keys for the device will not expire. Learn more at https://tailscale.com/kb/1028/.  | [optional] |
| **expires** | **Time** | The expiration date of the device&#39;s auth key. Learn more about key expiry at https://tailscale.com/kb/1028/.  | [optional] |
| **authorized** | **Boolean** | &#39;true&#39; if the device has been authorized to join the tailnet; otherwise, &#39;false&#39;. Learn more about device authorization at https://tailscale.com/kb/1099/.  | [optional] |
| **is_external** | **Boolean** | &#39;true&#39;, indicates that a device is not a member of the tailnet, but is shared in to the tailnet; if &#39;false&#39;, the device is a member of the tailnet. Learn more about node sharing at https://tailscale.com/kb/1084/.  | [optional] |
| **machine_key** | **String** | For internal use and is not required for any API operations. This value is empty for external devices.  | [optional] |
| **node_key** | **String** | Mostly for internal use, required for select operations, such as adding a node to a locked tailnet. Learn about tailnet locks at https://tailscale.com/kb/1226/.  | [optional] |
| **blocks_incoming_connections** | **Boolean** | &#39;true&#39; if the device is not allowed to accept any connections over Tailscale, including pings. Learn more in the \&quot;Allow incoming connections\&quot; section of https://tailscale.com/kb/1072/.  | [optional] |
| **enabled_routes** | **Array&lt;String&gt;** | The subnet routes for this device that have been approved by a tailnet admin. Learn more about subnet routes at https://tailscale.com/kb/1019/.  | [optional] |
| **advertised_routes** | **Array&lt;String&gt;** | The subnets this device requests to expose. Learn more about subnet routes at https://tailscale.com/kb/1019/.  | [optional] |
| **client_connectivity** | [**DeviceClientConnectivity**](DeviceClientConnectivity.md) |  | [optional] |
| **tags** | **Array&lt;String&gt;** | Lets you assign an identity to a device that is separate from human users, and use it as part of an ACL to restrict access. Once a device is tagged, the tag is the owner of that device. A single node can have multiple tags assigned. This value is empty for external devices. Learn more about tags at https://tailscale.com/kb/1068/.  | [optional] |
| **tailnet_lock_error** | **String** | Indicates an issue with the tailnet lock node-key signature on this device. This field is only populated when tailnet lock is enabled.  | [optional] |
| **tailnet_lock_key** | **String** | The node&#39;s tailnet lock key. Every node generates a tailnet lock key (so the value will be present) even if tailnet lock is not enabled. Learn more about tailnet lock at https://tailscale.com/kb/1226/.  | [optional] |
| **posture_identity** | [**DevicePostureIdentity**](DevicePostureIdentity.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Device.new(
  addresses: null,
  id: 92960230385,
  node_id: n292kg92CNTRL,
  user: amelie@example.com,
  name: pangolin.tailfe8c.ts.net,
  hostname: pangolin,
  client_version: v1.36.0,
  update_available: false,
  os: linux,
  created: 2022-12-01T05:23:30Z,
  last_seen: 2022-12-01T05:23:30Z,
  key_expiry_disabled: false,
  expires: 2023-05-30T04:44:05Z,
  authorized: false,
  is_external: false,
  machine_key: ,
  node_key: nodekey:01234567890abcdef,
  blocks_incoming_connections: false,
  enabled_routes: [10.0.0.0/16, 192.168.1.0/24],
  advertised_routes: [10.0.0.0/16, 192.168.1.0/24],
  client_connectivity: null,
  tags: [tag:golink],
  tailnet_lock_error: ,
  tailnet_lock_key: ,
  posture_identity: null
)
```

