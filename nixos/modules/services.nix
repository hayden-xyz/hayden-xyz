{ config, pkgs, ... }:

{
  ## Services.hardware ##
  services.hardware = {
    ## openrgb ##
    #openrgb = {
      #enable = true;
      #motherboard = "amd";
    #};
  };
  ## services.xserver ##
  services.xserver = {
    enable = false;
    xkb.layout = "de";
    xkb.variant = "";
  };
  ## services.printing (CUPS) ##
  services.printing = {
    enable = true;
  };
  ## services.flatpak ##
  services.flatpak = {
    enable = true;
  };
}
