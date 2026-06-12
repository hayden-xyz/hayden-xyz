{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    kdePackages.kdeconnect-kde
    kdePackages.kate
  ];
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    kinfocenter
    khelpcenter
    discover
    okular
    qrca
    elisa
  ];
}
