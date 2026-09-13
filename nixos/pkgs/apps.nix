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
  environment.systemPackages = with pkgs; [
    ## Browsers ##
    #brave

    ## Messengers ##
    element-desktop
    signal-desktop
    kdePackages.neochat # kde matrix client

    ## Email clients ##
    kdePackages.kmail
    kdePackages.kmailtransport
    kdePackages.kmail-account-wizard

    ## Music ##
    inputs.tidaLuna.packages.${stdenv.hostPlatform.system}.default #Tidal client mod

    ## IDEs ##
    greenfoot
  ];
}
