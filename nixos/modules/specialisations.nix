{ config, pkgs, inputs, stable, ... }:

{
  specialisation = {
    ## enable the kde plasma desktop environment ##
    kde.configuration = {
      services = {
        flatpak = {
          enable = true;
        };
        desktopManager = {
          plasma6 = {
            enable = true;
          };
        };
      };
      environment.plasma6.excludePackages = with pkgs.kdePackages; [
        elisa
        khelpcenter
        okular
        qrca
      ];
      environment.systemPackages = with pkgs; [
        kdePackages.kdeconnect-kde
        kdePackages.kamoso
        haruna

        ## Document editing ##
        libreoffice-qt
      ];
    };
    ## enable the gnome desktop environment ##
    gnome.configuration = {
      services = {
        flatpak = {
          enable = true;
        };
        desktopManager = {
          gnome = {
            enable = true;
          };
        };
      };
      environment.gnome.excludePackages = with pkgs; [
        atomix
        epiphany
        evince
        geary
        gnome-characters
        gnome-terminal
        hitori
        iagno
        tali
        yelp
      ];
    };
  };
}
