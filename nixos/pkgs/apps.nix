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
    inputs.tidaLuna.packages.${stdenv.hostPlatform.system}.default
    #tidal-hifi
    upscayl
  ];
}
