{ config, pkgs, ... }:

{
  ## Enable the KDE Plasma Desktop Environment ##
  services.displayManager.plasma-login-manager.enable = true;
  services.desktopManager.plasma6.enable = true;

  environment.systemPackages = with pkgs; [
    kdePackages.kdeconnect-kde
    kdePackages.kate
    haruna
  ];
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    kinfocenter
    khelpcenter
    okular
    qrca
  ];
}
