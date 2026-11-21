{ config, pkgs, imputs, ... }:

{
  catppuccin = {
    ## global ##
    accent = "mauve";
    flavor = "macchiato";
    enable = true;

    ## programs ##
    element-desktop.enable = true;
    micro = {
      enable = true;
      transparent = true;
    };
    ghostty.enable = true;
    thunderbird = {
      enable = true;
      profile = "default";
    };
  };
}
