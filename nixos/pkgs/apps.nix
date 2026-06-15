{ config, pkgs, inputs, ... }:

{
  environment.systemPackages = with pkgs; [
    brave
    signal-desktop
    deja-dup
    openrgb-with-all-plugins
    inputs.tidaLuna.packages.${stdenv.hostPlatform.system}.default
  ];
}
