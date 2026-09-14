{ config, pkgs, ... }:

{
  ## Enable the KDE Plasma Desktop Environment ##
  services.desktopManager.plasma6.enable = true;

  environment.systemPackages = with pkgs; [
    kdePackages.kdeconnect-kde
    kdePackages.kamoso
    kdePackages.kate
    haruna
  ];
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    elisa
    khelpcenter
    okular
    qrca
  ];
}
