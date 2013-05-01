#
# Cookbook Name:: virtualbox
# Recipe:: default
#

include_recipe "apt"

apt_repository "virtualbox" do
  uri "http://download.virtualbox.org/virtualbox/debian"
  distribution node["lsb"]["codename"]
  components ["contrib"]
  key "http://download.virtualbox.org/virtualbox/debian/oracle_vbox.asc"
  action :add
end

package "smbios-utils"
package "libsmbios2"
package "virtualbox-guest-additions"
package "virtualbox-ose-guest-utils"
package "virtualbox-ose-guest-x11"
package "virtualbox-ose-guest-dkms"
