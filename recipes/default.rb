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

%w[
  smbios-utils libsmbios2
  virtualbox-guest-additions virtualbox-ose-guest-utils
  virtualbox-ose-guest-x11 virtualbox-ose-guest-dkms
].each do |pkg|
  package pkg
end