{ config, pkgs, inputs, stable, ... }:

{
  specialisation.niri.configuration = {
    services.displayManager.ly.enable = true;
    environment.systemPackages = with pkgs; [
    ];
  };
}
