{ config, pkgs, ... }:

{
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
