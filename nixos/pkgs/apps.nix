{ config, pkgs, inputs, ... }:

{
  programs = {
    firefox = {
      enable = true;
    };
    thunderbird = {
      enable = true;
    };
  };
  environment.systemPackages = with pkgs; with pkgs.kdePackages; [
    ## Browsers ##
    #brave

    ## Messengers ##
    element-desktop
    signal-desktop
    #neochat # kde matrix client

    ## Email clients ##
    kmail
    kmailtransport
    kmail-account-wizard

    ## Music ##
    inputs.tidaLuna.packages.${stdenv.hostPlatform.system}.default #Tidal client mod

    ## IDEs ##
    kate
    greenfoot

    ## Document scanning / editing ##
    simple-scan
  ];
}
