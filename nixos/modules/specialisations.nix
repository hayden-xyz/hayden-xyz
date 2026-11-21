{ config, pkgs, inputs, stable, ... }:

{
  specialisation = {
    ## enable the kde plasma desktop environment ##
    kde.configuration = {
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
    ## enable the gnome desktop environment ##
    gnome.configuration = {
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
    niri.configuration = {
      services = {
        displayManager = {
          ly = {
            enable = true;
            settings = {
              animate = true;
              animation = "matrix";
              clock = "%c";
              bigclock = true;
              border_fg = "0x006600E3";
              cmatrix_fg = "0x006600E3";
            };
          };
        };
      };
      environment.systemPackages = with pkgs; [
      ];
    };
  };
}
