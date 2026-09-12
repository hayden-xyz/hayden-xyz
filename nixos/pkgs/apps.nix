{ config, pkgs, inputs, ... }:

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
    tidal-hifi

    ## IDEs ##
    greenfoot
  ];
}
