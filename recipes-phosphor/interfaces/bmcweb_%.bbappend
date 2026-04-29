# Enable D-Bus-based firmware update service so that:
# 1. PLDM firmware inventory shows Updateable=true
# 2. Redfish UpdateService routes to pldmd StartUpdate instead of phosphor-bmc-code-mgmt
EXTRA_OEMESON:remove = "-Dredfish-updateservice-use-dbus=disabled"
EXTRA_OEMESON:append = " -Dredfish-updateservice-use-dbus=enabled"
