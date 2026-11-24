{ config, pkgs, inputs, stable, ... }:

{
  specialisation.kde.configuration = {
    services = {
      displayManager = {
        plasma-login-manager.enable = true;
      };
      desktopManager = {
        plasma6 = {
          enable = true;
        };
      };
      flatpak = {
        enable = true;
      };
    };
    environment.plasma6.excludePackages = with pkgs.kdePackages; [
      elisa
      khelpcenter
      okular
      qrca
    ];
    environment.systemPackages = with pkgs; with pkgs.kdePackages; [
      kdeconnect-kde
      filelight
      kamoso
      haruna

      ## Document editing ##
      libreoffice-qt
    ];
  };
}
