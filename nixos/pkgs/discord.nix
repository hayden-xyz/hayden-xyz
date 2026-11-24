{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.nixcord.nixosModules.nixcord
  ];

  programs.nixcord = {
    # enable equicord
    enable = true;
    user = "hayden";
    discord = {
      equicord.enable = true;
      vencord.enable = false;
    };
    # theming
    quickCss = "/* css goes here */";
    config = {
      useQuickCss = true;
      themeLinks = [
        "https://dom1torii.github.io/discord16/src/discord16-catppuccin-macchiato.theme.css"
      ];
      enabledThemeLinks = [
        "https://raw.githubusercontent.com/refact0r/midnight-discord/refs/heads/master/themes/flavors/midnight-catppuccin-macchiato.theme.css"
      ];
      # other configs
      autoUpdate = true;
      autoUpdateNotification = true;
    };
  };
}
