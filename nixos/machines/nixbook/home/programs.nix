{ config, pkgs, inputs, stable, ... }:

{
  programs = {
    ghostty = {
      enable = true;
      package = null;
      systemd.enable = false;
    };
    micro = {
      enable = true;
      package = null;
    };
    thunderbird = {
      enable = true;
      profiles."default" = {
        isDefault = true;
      };
    };
  };
}
