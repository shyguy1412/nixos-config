# In /etc/nixos/configuration.nix
{ pkgs, lib, options, ... }:
{
  security.pam.services = {

    nitrokey = {
      text = (builtins.readFile ../assets/pam.d/nitrokey);
    };

    greetd = {
      # text = (builtins.readFile ../assets/pam.d/greetd);
      kwallet = {
        enable = true;
      };
    };

  };
}
