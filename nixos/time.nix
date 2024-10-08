# In /etc/nixos/configuration.nix
{ pkgs, lib, options, ... }:
{

  time.timeZone = lib.mkDefault "Europe/Berlin";
  services.ntp.enable = true;
  services.timesyncd.enable = true;
  networking.timeServers = options.networking.timeServers.default;

}