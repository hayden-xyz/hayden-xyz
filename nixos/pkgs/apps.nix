{ config, pkgs, inputs, ... }:

{
  programs = {
    firefox.enable = true;
  };
  environment.systemPackages = with pkgs; [
    brave
    signal-desktop
    deja-dup
    openrgb-with-all-plugins
    tidal-hifi
  ];
}
