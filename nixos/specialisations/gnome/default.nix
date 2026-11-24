{ config, pkgs, inputs, stable, ... }:

{
  specialisation.gnome.configuration = {
    services = {
      displayManager = {
        gdm.enable = true;
      };
      desktopManager = {
        gnome = {
          enable = true;
        };
      };
      flatpak = {
        enable = true;
      };
    };
    environment.gnome.excludePackages = with pkgs; [
      atomix
      epiphany
      evince
      geary
      gnome-characters
      gnome-connections
      gnome-software
      gnome-terminal
      gnome-tour
      gnome-font-viewer
      gnome-console
      hitori
      iagno
      tali
      yelp
    ];
    environment.systemPackages = with pkgs; [
      wike
    ];
  };
}
