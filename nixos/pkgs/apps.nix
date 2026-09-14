{ config, pkgs, inputs, stable, ... }:

{
  programs = {
    firefox.enable = true;
  };
  environment.systemPackages = with pkgs; [
    ## Browsers ##
    #brave

    ## Messengers ##
    element-desktop
    signal-desktop

    ## Music ##
    inputs.tidaLuna.packages.${stdenv.hostPlatform.system}.default #Tidal client mod

    ## IDEs ##
    stable.greenfoot
  ];
}
