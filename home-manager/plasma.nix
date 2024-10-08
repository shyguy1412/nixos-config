{ pkgs, inputs, outputs, ... }:
{
  imports = [
  ];

  programs = {
    plasma = {
      enable = true;

      workspace = {
        # clickItemTo = "select";
        # lookAndFeel = "org.kde.breezedark.desktop";
        # cursor.theme = "Bibata-Modern-Ice";
        # iconTheme = "Papirus-Dark";
        # wallpaper = "${pkgs.kdePackages.plasma-workspace-wallpapers}/share/wallpapers/Patak/contents/images/1080x1920.png";
      };

      hotkeys.commands."launch-konsole" = {
        name = "Launch Konsole";
        key = "Meta+Alt+K";
        command = "konsole";
      };

    };
  };
}
