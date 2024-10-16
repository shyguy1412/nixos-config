# This is your home-manager configuration file
# Use this to configure your home environment (it replaces ~/.config/nixpkgs/home.nix)
{ inputs
, lib
, config
, pkgs
, ...
}: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
    ./plasma.nix
  ];

  home = {
    username = "shy";
    homeDirectory = "/home/shy";
  };

  # Add stuff for your user as you see fit:
  # programs.neovim.enable = true;
  home.packages = with pkgs; [
    vscode
    discord
    firefox
    steam
    gimp
  ];

  # Enable home-manager and git
  programs.home-manager.enable = true;
  programs.git =
    {
      enable = true;
      userName = "shyguy1412";
      userEmail = "nilsramstoeck@gmail.com";
    };

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.05";
}
