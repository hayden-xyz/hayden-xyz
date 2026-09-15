{ config, pkgs, inputs, stable, ... }:

{
  programs = {
    firefox.enable = true;
    thunderbird.enable = true;
  };
  environment.systemPackages = with pkgs; with pkgs.kdePackages; [
    ## Browsers ##
    #brave

    ## Messengers ##
    element-desktop
    signal-desktop

    ## Email clients ##
    #kmail
    #kmailtransport
    #kmail-account-wizard

    ## Music ##
    inputs.tidaLuna.packages.${stdenv.hostPlatform.system}.default #Tidal client mod

    ## IDEs ##
    kdePackages.kate
    stable.greenfoot

    ## Document scanning / editing ##
    simple-scan
  ];
}
